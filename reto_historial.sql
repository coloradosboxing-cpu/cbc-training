-- ═══════════════════════════════════════════════════════
-- CBC TRAINING — Tabla historial de participantes de reto
-- ═══════════════════════════════════════════════════════

CREATE TABLE IF NOT EXISTS reto_historial (
  id            bigint PRIMARY KEY,
  nombre        text NOT NULL,
  telefono      text,
  pin           text,
  ronda         int DEFAULT 1,
  dias_completados int DEFAULT 0,
  nivel         text,
  fecha_inicio  date,
  fecha_fin     date DEFAULT CURRENT_DATE,
  created_at    timestamptz DEFAULT now()
);

ALTER TABLE reto_historial ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Historial: acceso total anon" ON reto_historial
  FOR ALL TO anon USING (true) WITH CHECK (true);
