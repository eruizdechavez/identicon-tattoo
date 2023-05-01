import { createAvatar } from "@dicebear/core";
import { identicon } from "@dicebear/collection";
import data from "./data/data.mjs";

const length = `${data.length}`.length;

data.forEach((item, index) => {
  const avatar = createAvatar(identicon, {
    seed: item,
    rowColor: ["000000"],
  });

  const fileName = `${index + 1}`.padStart(length, "0");
  avatar.png().toFile(`/tmp/identicon-tattoo/${fileName}.png`);
});
