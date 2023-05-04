import matplotlib.pyplot as plt
import wandb
wandb.init(project="saddle",entity="nimawickramasinghe")

plt.semilogy([1,2,3,4],[1,4,9,16], 'ro')
plt.tight_layout()
plt.legend([f'A simple {2*3} line <br> secondline'], handlelength=0, loc='center left')
# plt.show()
wandb.log({"chart": plt})