
from PIL import Image
import numpy as np
import argparse
from pathlib import Path

def remove_black(input_path, output_path):
    img = Image.open(input_path).convert("RGB")
    pixels = np.array(img, dtype=np.float32)

    # Calculate alpha from the brightest color channel
    alpha = np.max(pixels, axis=2)

    # Normalize RGB to preserve the original additive color contribution
    rgb = np.zeros_like(pixels)
    mask = alpha > 0

    rgb[mask] = pixels[mask] * (255.0 / alpha[mask, None])

    # Clamp values
    rgb = np.clip(rgb, 0, 255).astype(np.uint8)
    alpha = alpha.astype(np.uint8)

    # Combine RGB and alpha
    result = np.dstack((rgb, alpha))

    Image.fromarray(result, "RGBA").save(output_path)
    print(f"Saved: {output_path}")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Remove black from additive textures"
    )
    parser.add_argument("input", help="Input image")
    parser.add_argument("output", help="Output PNG")

    args = parser.parse_args()
    remove_black(args.input, args.output)
