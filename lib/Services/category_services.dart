import 'package:muse_me_app/Category/category.dart';

class CategoryOperations {
  // this underscore after . means its a private and brackets are the constructor
  // so its a provate constructor ._(){}  given below in the line

  CategoryOperations._() {}
  static List<Category> getCategories() {
    return <Category>[
      Category("Top Songs",
          "data:image/png;base64,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"),
      Category("Jeremy Zucker Songs",
          "data:image/jpeg;base64,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"),
      Category("Top Songs",
          "data:image/png;base64,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"),
      Category("Top Songs",
          "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAflBMVEUU2MMAAAAU28YTz7sKamADIBwCGRYJY1kT1L8IWFAFOTMT0b0U18IIX1YSxbIBFRMRuqgPppYNjoEOm4wDHBkQrZwSwa4GSUIMg3YKcmcLe28FPjgSybYHUUkNlYYGRD4ELCcDJyMPqpoACgkACQgMgHMLeG0NkYMEMi0CEhEwAwsvAAAIRUlEQVR4nO2d6ZaiMBCF6UIbkEUghkUWxYWW93/BAbcExHZpAjinvl+jMya5JFQqlUpGkhAEQRAEQRAEQRAEQRAEQRAEQRAEQRAEQRAEQRAEQT4PuGHoFnVJKcewbEpI6p5ICaF2LP0fMksVuk2CUPOjdbbYfVXsFtk68s0wILb+4SrL5lsk1KKs+GqjyCItJNbHiiwbHhPtsGgVx1gcNBJ/okiQZDpZP1B3YT2hsvRZGsHwiDZ/Ul/FXCOe8TkaQfJSf/eCvoqdn3of04/Wa/3H9aM1dNOfAVRHyd7QV5Epjjr6bgQvP7ypr+KQe+OWCEBX2z8I/PraRptRzxxx3j6374rFIZkErkNt26aOG0ySw6JoN0ZFHg8t4y6GbbY1uRQXEtuLddU4O92GqseeTcKk3R8wbWNoKa2UJsa/be13pLjU0qXGauL4Ubeoq0Tftz/yR2lwQE5nN02dagGV1Xs+Wfm9KtNAm978bpbKo5MI+v7GR5sqqadKvxqO8i9VL1VuNK73+sgkgrps2pi5SSzjCbtYLR6J2XQRiuW4Biqo+6ZAv3RQnm0jlG5Q8x0u9mOSCHqzBxeB9dK0Vi4kg4ZdLZbjGagg7+uDrNDoy040SFSrP6b5fjTmRk3rRma99N7wSwC8ZaOcVBXQ2jcwnPo0EZE3nz3IJKqVNHNGMfWDXTcS2vvTdek0aHVzZY9gnEJcd9U0+w/rWJDsukQzHl4iLDt96s0RsRxcITg1M5r8eViBnfAFftOBJYK3qg/Rv7cH6gN1NfCSWM+3NYGdFFqTuM31Tgp9F4cPWUROV6Xyk8ahq1LfASyFa0o5QXczoKDuQijWgOOUZNxwWnbmZIG85AZ/Rjoq9o2GePwLo3VoEsSV/BpGyrnK3526H2BzwY0iHch5A4+fnINOg4AAAVe2P1QnEoGNqD++Yd5E0Ll3ZU66fspAOGdJG2QxDJR7C83OLTpYnEdfDOK7wYS1YEq6twUG4SJwkwEUgpyJ7MJGJ2YDBDSAszNTIebcSLlO7Pw9fwLOzoiZkmvTviagggfVWyw4Mw+EhDZBDZg5nfXunAJnByIqqBLK1hjT3ocp5Gz3TxFkBkBmS5dd3rdCmb0j32IG6XGYMu9Uk4XUcb9ymw2gtbDpGChbJ0Y9BxaBWxn6wiJ+EDPnNOv5RYSAuWyhMKcR9PBaSxH0q9BgVe9EOv6E2bO810Ui71HNBb4gYLMZUek1RYMP264FLk/BY6/734PNL9XMzcXiDE3d1ES9rqDAYWZcEbg6BZ3N+WunV4XcZLEXaQGM/UDTBaRs090VWpN7rWeR9qqQVSx25cavQt2hFAo1AEBRoaiK2xR2ctynUchwClPma5wnYpBUVS9Rjd8z2X4tFiTjVIh6TgYA+1rPvF9Ls7nGMKJjeAEkmeSm7/uJEmxi9S2NAGq8CZSkLMXMyekABlhX12K26dX1lq+e98+xcfpPND87ydtFFNpvrIlBtcNocd5V282jn5Mn8XOpKOx3CQzW5DgjZsfMLIPWsgu+qjTfFzWW+poJxgk1jhllWfVhMek9FCUTJUkmTrXJrjqrryaZ+9pSIHZvU/xXTpX1pTuTJFFIz0EMqTr4U9qEU94ZvRVYGobwlbQFO2w7g7KqgnilCavsV389yEz5+U/NpKgLW/N5ibbZfobhlBJ1U6VQVF3W68/TcO8ccSolPtccuCfwq3Brbj0YZe1i8xUNe6klWsAfTwL5NoH9QvjU0hHi8G4Js1oo1grK2pcizyoYZFY97CLhgty8b9xk99y6494gqOD9eppU4a/tTMBW3hmg2bnehL1i/DbiDc/EcMC+PY3A4DYOr5GTTJgrbFwX3AuXvQ1c/lK2Wh3qNnHycFoEtf6IisNqlbGP0fUfqu51TaoI6kRQ2ZR1jZGCxHpg7cal2+Xz2drTh48bKN+Fhb/cxLHLYiTTS7YqHztdC9tGYLsIE7lFoRZXrrMd8k3OHzQG1Jx/IKW/V04JMdsUYQpl1tffQyk87kGV7dtzEv0HzhZYXFbJdF89o9qe0wgVHq0/m97WmwelbtiI3J5nl9ErLK0jc+O+g9+tgsFtoK0uS83RK5Qk7ozQ5NdwKuis3dv88uX4FbKJs3QtHyhkTm22uYoZv8KYzSvar1vgwO0lH+IPUqgyX/V5hTMVFaJCVIgKUSEqRIWoEBWiQlSIClEhKkSFqBAVokJU2FD430cTpU12/fKViPDlyw9Q+FZUv9h/jEJ+x+zByb3aCbzkvBM3eoWgczdgZo/u7XAy1on5qb/HrhDkgNshXT1IOIGYS6iaBucSxqrQjI/XIPJbwK/ucu+9Kj2Vy7LqWSHbrm3NVDikcUxdk89UWDw+Xkr5u/YK06VxnLLJptdMBUlqyTYBPtvkYJqrerbJ4+Mm/KGRivnKNLk0xeh6cxifbSJInwTXaY7PGKo3sM70zxlDCiuAZQyJyxZW3ZPEiLsLD9Jf2vfM/ZWg7n8pgUvuNs6XK2WuwOQ9lU4O00Pu8Q2M79+erzyZuXd/GKxrJXh5WfuECs1OPGWU1tptBPea9+x5usYVbTz1TI6W2gVwk8MKVnv7ds9f3ga21p6emDTzjQb6byI2UUvj5spLWdBKWxZ0tHn8y17Qya3EQ/DS0VLwgttM9ogMexkdh75pDNS5SV88dwk6bdyWvNU2oxFYWhuL74K14rxxchZiR+HM8jqwRnE96wVQ4x9lNi+KzA9JdQX7O2VIukVCPyuK+Uz5icd0FfSR40EBkP50fO38Y+jl1ME7dNSuscpDEARBEARBEARBEARBEARBEARBEARBEARBEARBEARBEARBEAT5T/gHd2WJPWnQVnIAAAAASUVORK5CYII="),
    ];
  }
}