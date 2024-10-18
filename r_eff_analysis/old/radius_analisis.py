import pathlib
from voidfindertk import io, popcorn, svf_popcorn, core
import numpy as np
import joblib
import pandas as pd



def get_effectiv_rad(path,dens,box):


    model = svf_popcorn.SVFPopCorn(
        workdir=path,
        boxsize=1000,
        densth=dens,
        minradius = 5,
        maxradius = 100
    )
    build_voids_parameters = {"run_work_dir": path, "box": box}
    tracers, centrs, extra = model.build_voids(build_voids_parameters)

    voids = core.voids.Voids(
    method="Popcorn",
    box=box,
    tracers_in_voids_=tracers,
    centers_=centrs,
    extra_=extra,
    )
    joblib.dump(voids, f"svf_popcorn_model_2{dens}.pkl")





# =============================================================================
# PATHS
# =============================================================================
dataset_path = pathlib.Path("/home/jorgefederico/updates/vftk_1109/voidFinderProject/datasets")
woking_dir= pathlib.Path("/home/jorgefederico/updates/vftk_1109/voidFinderProject/run_popcorn")

d_09_dir = "tmpw990bohs2024-08-09T18:06:26.180577+00:00"
d_08_dir = "tmpovse6ej82024-08-21T16:12:49.132243+00:00"
d_07_dir = "tmplxhn4wcw2024-08-22T01:08:51.465883+00:00"
paths = [
    woking_dir / d_09_dir,
    woking_dir / d_08_dir,
    woking_dir / d_07_dir
]



box = io.read_table(
    dataset_path/"halos_ascii_1000_1024_npmin_10_z0.51.dat",
    names=["m","x", "y", "z", "vx", "vy", "vz"])
##use
get_effectiv_rad(paths[2],dens=-0.7,box=box)

# pandas data from spherical popcorns
df9 = pd.read_csv(woking_dir / d_09_dir / "sphfile.dat",names=["idx","r","x","y","z","delta"], delim_whitespace=True)
df8 = pd.read_csv(woking_dir / d_08_dir / "sphfile.dat",names=["idx","r","x","y","z","delta"], delim_whitespace=True)
df7 = pd.read_csv(woking_dir / d_07_dir / "sphfile.dat",names=["idx","r","x","y","z","delta"], delim_whitespace=True)