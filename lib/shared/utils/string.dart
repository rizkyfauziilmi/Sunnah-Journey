String generateId(String title) {
  // Pray Sunnah Rawatib => pray_sunnah_rawatib
  return title.toLowerCase().replaceAll(' ', '_');
}
