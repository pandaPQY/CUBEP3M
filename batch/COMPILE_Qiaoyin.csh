#file to compile

cd ../utils/dist_init

# Library links
P3DFFT_LIB=/home/p/pen/emberson/lib/p3dfft_2.5.1/lib
P3DFFT_INC=/home/p/pen/emberson/lib/p3dfft_2.5.1/include

rm -f dist_init_dmnu_dm
rm -f dist_init_dmnu_nu

mpif90 -mcmodel=medium -shared-intel -fpp -g -O3 -xhost -mt_mpi -openmp dist_init_dmnu.f90 -I$SCINET_FFTW_INC -I$P3DFFT_INC -o dist_init_dmnu_dm -L$SCINET_FFTW_LIB -L$P3DFFT_LIB -lp3dfft -lfftw3f

cd ../../batch

echo "Sourced dist_init_p3dfft.csh for z=100"
                  #
                  #cd ../
                  #
                  #sed -i -e 's/z_i            = 100.0/z_i            = 0.0/g' parameters
                  #
                  #cd utils/dist_init
                  #
                  ## Library links
                  ## P3DFFT_LIB=/home/p/pen/emberson/lib/p3dfft_2.5.1/lib
                  ## P3DFFT_INC=/home/p/pen/emberson/lib/p3dfft_2.5.1/include
                  #
                  #mpif90 -mcmodel=medium -shared-intel -fpp -g -O3 -xhost -mt_mpi -openmp dist_init_dmnu.f90 -I$SCINET_FFTW_INC -I$P3DFFT_INC -o dist_init_dmnu_dm_0 -L$SCINET_FFTW_LIB -L$P3DFFT_LIB -lp3dfft -lfftw3f
                  #
                  #cd ../../batch
                  #
#echo "Sourced dist_init_p3dfft.csh for z=0"

cd ../source_threads

make clean
make -f Makefile NEUTRINOS=0
echo
echo "COMPILED DARK MATTER EXECUTABLE"
echo

cd ../batch

cd ../utils/cic_power

# Library links
P3DFFT_LIB=/home/p/pen/emberson/lib/p3dfft_2.5.1/lib
P3DFFT_INC=/home/p/pen/emberson/lib/p3dfft_2.5.1/include

rm -f cic_power_dmnu
rm -f ngp_power_dmnu

mpif90 -shared-intel -openmp -mcmodel=medium -fpp -g -O3 -DNGP -DGROUPS -DLOGBIN -Dwrite_den -mt_mpi cic_power_dmnu.f90 -I$SCINET_FFTW_INC -I$P3DFFT_INC -o ngp_power_dmnu -L$SCINET_FFTW_LIB -L$P3DFFT_LIB -lp3dfft -lfftw3f

cd ../../batch/

echo "Sourced COMPILE_cic_power_p3dfft.csh"
