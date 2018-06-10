open set

-- Twin Prime Conjecture --
def isPrime (n : ℕ) : Prop := (n ≥ 2) ∧ (∀ m : ℕ, m ≥ 1 ∧ m ∣ n → (m = 1 ∨ m =n))
#check isPrime

def twinPrime(p : ℕ) : Prop := isPrime(p) ∧ (∃ q : ℕ, (q = p + 2 ∨ q = p - 2) ∧ isPrime(q))
#check twinPrime

theorem infinite_twin_prime: ∀ n : ℕ, ∃ p, p ≥ n ∧ twinPrime(p) :=
begin
admit,
end 

#check infinite_twin_prime

-- Goldbach’s Conjecture --
def isEven(n : ℕ) : Prop := ∃ m, n = m * 2
theorem goldbach_conjecture(n : ℕ): isEven(n) → ∃ p q : ℕ, isPrime(p) ∧ isPrime(q) ∧ (p + q = n) :=
begin
admit,
end

#check goldbach_conjecture

-- The n^2 + 1 Conjecture --
theorem n2_1_conjecture(n : ℕ): ∃ p, (p = n^2 + 1) ∧ isPrime(p) :=
begin
admit,
end

#check n2_1_conjecture


-- The Polignac Conjecture --

-- syntax error?
-- theorem polignac_conjecture(n : ℕ): isEven(n) -> 
-- ∃ p q : ℕ, isPrime(p) ∧ isPrime(q) ∧ abs(p - q) < 1 :=
-- begin
-- admit,
-- end

theorem polignac_conjecture(n : ℕ): isEven(n) -> 
∃ p q : ℕ, isPrime(p) ∧ isPrime(q) ∧ ((p-q=n) ∨ (q-p=n)) :=
begin
admit,
end

#check polignac_conjecture


-- The Opperman Conjecture --
theorem opperman_conjecture(n : ℕ): 
∃ p : ℕ, isPrime(p) ∧ (n^2 ≤ p) ∧ (p ≤ (n+1)^2) :=
begin
admit,
end

#check opperman_conjecture
