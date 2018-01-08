sys = read_in {
    int_file = "FCIDUMP",
    nel = 2,
    ms = 0,
    sym = 0,
    Lz = true,
}

fciqmc {
    sys = sys,
    qmc = {
        tau = 0.0100,
        rng_seed = 7,
        init_pop = 10,
        mc_cycles = 100,
        nreports = 500,
        target_population = 100,
        excit_gen = "no_renorm",
        state_size = -5,
        spawned_state_size = -1,
        real_amplitudes = true,
        real_amplitude_force_32 = true,
    },
    restart = {
        write = 0,
    },
    reference = {
        ex_level = 2,
    },
}
