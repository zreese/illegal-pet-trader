# Illegal Pet Trade Simulation Game Design Document

# **Illegal Pet Trade Simulation Game Design Document**

## **Game Concept and Overview**

This design document outlines a browser-based strategy/simulation game where the player assumes the role of an illegal exotic pet trafficker. The game draws inspiration from classic text-based trading games like **Drug Wars** (1984) in its simple UI and turn-based trading mechanics , but expands into a long-term, open-ended progression with multiple interlocking systems. Players buy and sell illegally obtained wildlife, navigate a web of corruption and law enforcement, manage a network of suppliers and buyers, and confront the brutal realities of the trade. The core aim is to deliver an **“honest and horrifying”** portrayal of the illegal pet trade – exposing its cruelty, logistics, and corruption in unflinching detail.

**Key Features:**

* **Trade in Exotic Animals:** Purchase rare animals (parrots, reptiles, primates, etc.) from poachers or breeders and sell them to collectors, zoos, labs, or other buyers on the black market.

* **Bribery & Corruption:** Bribe customs officials, police, and politicians to look the other way, forge permits, or tip you off to raids. Corruption is pervasive at every stage of wildlife trafficking , and the game reflects this.

* **Evade Detection:** Avoid law enforcement crackdowns and investigations by managing your **suspicion level** and using stealthy tactics. Also contend with animal rights activists and whistleblowers who may expose your operation.

* **Logistics & Smuggling:** Coordinate complex transport routes across borders, using methods like hidden luggage, fake cargo, or secret compartments. Handle challenges like animal perishability, disease outbreaks, and unpredictable travel risks.

* **Relationships & Reputation:** Build a network of suppliers (poachers, smugglers) and buyers (private collectors, wealthy celebrities, research labs, etc.). Manage your **reputation** among underworld contacts as well as your **notoriety** with authorities.

* **Progression & Expansion:** Reinvest profits into expanding your operation – acquire better equipment, new safehouses in different territories, and more influence. Increase your **territorial reach** from local markets to a global scale.

* **Ethical Dilemmas:** Experience the moral cost of wildlife crime. The game’s tone and events will force players to face ethical stressors – from watching animals suffer and die to dealing with guilt or burnout – underscoring the grim reality behind the profits.

**Real-World Context:** The illegal wildlife trade is a multibillion-dollar global black market, ranked by the UN alongside drugs, arms, and human trafficking in profitability . It’s estimated at **$7–23 billion annually** and is often the *second most lucrative* illicit trade after drugs in regions like Southeast Asia . Unlike a glamorous crime simulation, this game leverages real facts (e.g. nearly **one-third of wild animals die during transportation** ) to ground the experience in authenticity. The goal is to educate through immersion: as the player’s empire grows, so does the toll in suffering and the risk of catastrophic failure.

## **Setting and Tone**

**Setting:** The game is set in the modern-day international black market for exotic animals. The player begins as a small-time smuggler in a specific region (for example, sourcing reptiles in Australia or birds in South America) and can gradually extend operations worldwide. Locations span **source regions** (rainforests, savannas, islands where animals are captured), **transit hubs** (major airports/seaports known for trafficking), and **destination markets** (affluent cities where demand for exotic pets is high). The world is populated by law enforcement agencies (e.g. customs, wildlife authorities, Interpol), conservation NGOs, and other traffickers, creating a living environment that reacts to the player’s actions.

**Tone – “Honest and Horrifying”:** The game’s narrative style is gritty, factual, and unflinching. It does not shy away from depicting the cruelty and moral depravity of the illegal pet trade. All descriptions of events, outcomes, and flavor text are written to be truthful to real-life trafficking scenarios:

* Animal suffering is described in clear, direct language. For example, if a shipment of parrots is delayed, the text might note several birds **suffocated or starved in their cramped crate** . The game will reference actual conditions reported in wildlife trafficking: animals wrapped tightly in tape or stuffed in socks and plastic tubes, often found **paralyzed or dead on arrival due to inhumane transport** .

* The **logistics and cruelty** of smuggling methods are portrayed accurately. Players will read about tactics like drugging a tiger cub and hiding it among stuffed toys , or reptiles **taped up and packed in household appliances (e.g. rice cookers)** . These details, drawn from real cases, reinforce the horrifying nature of the trade.

* **Corruption** is presented matter-of-factly as a ubiquitous part of the world. Text and scenarios will show how government officials accept bribes and even high-level politicians intervene on traffickers’ behalf. For instance, an event might reference a smuggler being released from custody due to *“pressure by unnamed politicians”* , mirroring documented incidents. The tone neither glamorizes nor sanitizes these realities – it simply exposes them.

* There is an underlying **educational aspect**: the tone uses an almost journalistic or documentary voice at times. Snippets of in-game “news” might appear after major events (e.g. a newspaper report of a raid, quoting an official calling the conditions *“extremely cruel…some animals have suffocated”* ). This reinforces that the game’s horror comes from reality, not fantasy.

* **Moral confrontation:** The writing occasionally directs the impact at the player. For example, after a particularly grisly outcome (like dozens of turtles dying from a disease outbreak due to cramped transit ), the narrative might highlight the consequences (“*Your insistence on maximizing cargo has led to a deadly outbreak…*”) without overt moralizing, letting the player feel the weight. The game wants the player to feel discomfort and responsibility for the cruelty they cause, even as they progress.

Overall, the tone is **bleak, serious, and realistic**. Any sense of “power fantasy” from being a crime kingpin is undercut by constant reminders of the suffering involved and the looming threat of collapse. This balance aims to keep players engaged in the strategy, but cognizant of the ethical darkness of their actions.

## **Core Gameplay Loop**

The gameplay follows a **turn-based loop** (each turn could represent a day or week of in-game time) in which the player makes strategic decisions to grow their illegal pet trading business. Below is the typical loop of play, which repeats and evolves over time:

1. **Acquire Animals:** Start by obtaining illegal wildlife. The player can **buy animals from suppliers** (e.g. local poachers, black market breeders, corrupt zookeepers) or occasionally **capture/steal animals** (via special events or actions). Each species has a purchase price and quantity available. Inventory capacity and available cash limit how much can be acquired per turn.

2. **Arrange Transport & Smuggling:** Once animals are acquired, choose how to transport them to a selling location or directly to a buyer:

   * Select a **route and method** (e.g. fly with animals in luggage, ship via freight with falsified documents, drive across a border, mail small creatures, etc.).

   * Allocate resources to **logistics**: maybe purchase special containers or pay upfront bribes to smooth transit.

   * This step initiates the **risk phase** – upon transport, the game may trigger random events (customs inspections, animals falling ill, etc. as detailed later). The outcomes here depend on the precautions taken and luck.

3. **Evade or Confront Challenges:** If an event occurs during transit (or later), the player must make decisions (e.g. attempt to bribe an inspector, abandon a shipment to avoid arrest, use a decoy). Successfully managing these challenges keeps the loop going; failure can mean losing inventory, profits, or even being arrested (which could end the game or impose severe penalties).

4. **Sell Animals for Profit:** Upon reaching the destination (assuming the animals survive and are not confiscated), sell the animals:

   * If a **specific buyer** is lined up (say a collector requested X animals), negotiate and complete the sale for a set price.

   * Or sell on the **open market** in that region. Prices fluctuate based on supply-demand and recent events. The player can try to get the best price, but holding animals too long can be costly (upkeep, or risk of detection).

   * Completing sales yields **money** (primary resource) and possibly increases the player’s reputation (if the deal was high-profile or impressed black market peers).

5. **Invest and Expand:** Use profits to improve the operation:

   * Pay off any **loans** or debts (if the game starts the player in debt like Drug Wars’ loan shark mechanic , or if the player borrowed money to buy inventory).

   * **Bribe officials** to reduce heat or secure future favors.

   * Purchase **upgrades** (detailed in Progression section) such as better transport equipment, additional storage (to increase capacity), hire henchmen or specialists, etc.

   * Possibly expand into new **territories** (unlock new locations/routes to trade new species).

   * Manage any **relationships**: for instance, placate an unhappy supplier or reward a loyal smuggler to keep them cooperative.

6. **Progress Time:** End the turn (advance the in-game day/week). The game updates world state:

   * Heat/detection level may increase over time or due to recent activities.

   * Some events may have delayed effects (e.g. a buyer you sold to might get caught later, reflecting back on you).

   * Dynamic elements like market prices refresh, and available supply can change (e.g. after a large sale, that species might become rarer for a while).

   * The next turn begins, looping back to acquiring more animals or possibly laying low if needed.

This loop can be summarized as **Acquire → Smuggle → Sell → Reinvest → Repeat**, with random events and narrative encounters interwoven at each stage to provide unpredictability. The player’s overarching goal is typically to accumulate wealth and influence (e.g. *“achieve $X million and dominate the international trade”*), but the design allows open-ended play where the challenge escalates as you grow. Mastery involves optimizing profits while mitigating ever-increasing risks.

## **Trading System: Buying & Selling Animals**

The trading system is the economic engine of the game, dealing with how animals are bought, sold, and priced. It functions similarly to a commodity trading sim, but with unique twists due to the nature of living, illegal “products.”

**Animal Resources:** Each animal in the game is treated as an item in the player’s inventory, with key attributes:

* **Species/Type:** e.g. African Grey Parrot, Ball Python, Bengal Tiger Cub, Slow Loris, Radiated Tortoise, etc.

* **Quantity:** How many of that animal the player currently holds. Some animals may be traded as individuals, others in batches (e.g. small reptiles).

* **Value (Buy & Sell Price):** An approximate market price. Buy price depends on supplier (usually low in source regions), sell price depends on demand in destination. These prices fluctuate over time and can be influenced by events (e.g. a crackdown might drive prices up due to scarcity, a breeding glut might drive prices down).

* **Risk Factors:** Each species has an inherent risk profile – how illegal/protected it is (which affects law enforcement scrutiny if caught) and how difficult it is to transport (large or fragile species are harder to smuggle).

* **Care Requirements:** Some animals might have special needs (for example, primates might require feeding or they fall ill faster; certain frogs might need moisture, etc.). In simple terms, this could be reflected as different rates of mortality or spoilage over time.

To illustrate, below is a sample of **animal types** and their trading characteristics:

| Animal Type | Examples | Source Price (each) | Black Market Price (each) | Smuggling Difficulty | Mortality Rate (in transit) |
| ----- | ----- | ----- | ----- | ----- | ----- |
| **Parrots & Birds** | African Grey Parrot, Cockatoo, Macaw | $100–$300 (wild-caught) | $1,000–$5,000 (high demand) | Medium – often smuggled in luggage or PVC tubes; airport X-rays are a risk . | High – \~30% die if smuggled in crates/tubes ; stress can cause disease (e.g. avian virus) . |
| **Reptiles** | Tortoises, Iguanas, Pythons, Geckos | $50–$200 (common species) | $300–$1,500 (pet markets in US/EU) | Low/Medium – small reptiles mailed or taped to body; larger snakes need bags. Still risk of detection via scanners . | Medium – Many survive if kept cool/inactive, but cruel methods (stuffing in socks) cause injuries . |
| **Primates** | Slow Loris, Marmoset, Chimpanzee infant | $500–$2,000 | $5,000–$20,000 (collectors or labs) | High – primates are often protected and can make noise; require sedation or hidden compartments. High risk at borders. | High – sedation and stress kill many (lorises often have teeth removed cruelly to make them “safe” pets). Expect losses if transit is long. |
| **Big Cats & Exotics** | Tiger cub, Leopard cub, Rare big cats | $5,000+ (bribes for poaching) | $20,000–$100,000 (private menageries) | Very High – extremely illegal (CITES Appendix I). Requires bribing officials and creative concealment (e.g. tiger cubs drugged in luggage) . | Very High – risk of death from sedation, handling. Also a major attention risk if discovered (immediate game-over-level event if caught). |
| **Amphibians & Insects** | Rare frogs, Tarantulas, etc. | $5–$50 | $100–$300 (collectors, pet hobbyists) | Low – tiny and easy to ship (often via mail parcels labeled as other goods). Low priority for enforcement unless large quantities. | Medium – high losses if not packed properly (temperature/humidity swings can kill them in transit). Some can spread fungal diseases. |
| **Marine/Aquatic** | Exotic fish, Turtles | $20–$100 | $200–$1000 (aquarium trade) | Medium – small fish can be bagged and mailed (with water), turtles often smuggled in false-bottom crates. Customs may check for wildlife. | High – very delicate; fish often die from temperature shock; turtles can carry diseases and many die if kept without water/food . |

*(Prices are illustrative and can vary by region and scenario. “Difficulty” combines both detection risk and handling complexity.)*

**Market Dynamics:** Prices in the game are dynamic rather than fixed. They change according to:

* **Location:** Each major city or region has different demand. For example, rare turtles might fetch a high price in Southeast Asian pet markets, while exotic parrots sell for more in Western markets. The player can try to “arbitrage” by moving goods from where they are cheap and common to where they are expensive (just as Drug Wars had different prices in different neighborhoods ).

* **Global Events:** Random events or scripted scenarios can shift prices. A **major bust** might reduce supply and spike prices for that animal. Conversely, if an animal is suddenly legally farmed or floods the market, illegal price drops.

* **Quality/Condition:** If the game models animal health, buyers may pay less for animals in poor condition (e.g. an injured or sick animal might only sell for a fraction or not at all). A perfectly healthy specimen commands top dollar.

* **Reputation Influence:** As the player’s reputation grows, they might access elite buyers who pay premium for guaranteed delivery of rare animals. This acts like an economic difficulty slider – early on you sell to middlemen cheaply, later you sell directly to rich collectors at a higher profit margin.

**Inventory Management:** There is a cap on how many animals (and of what size) the player can hold at once, introducing a **capacity management** challenge:

* Initially, inventory space is very limited – e.g. you only have a small van or a few cages (similar to Drug Wars’ starting limit of 100 “spaces” in your trenchcoat ). Each animal type might occupy a certain number of spaces (a large snake might take 5 slots, a small gecko 1 slot, etc.).

* The player can expand capacity through progression (buy a larger safehouse, equip a warehouse, or hire transport vehicles).

* If the player exceeds safe capacity, animals will start to suffer and die faster (or simply, you cannot acquire beyond the limit).

* Storing animals long-term is risky: unlike non-perishable “goods”, animals require care. The game could simulate this with a small daily cost for feed and a gradual chance of death if kept too long. This encourages a quick turnover, preventing players from hoarding indefinitely for a perfect price.

**Example of Trading Interaction:**

*You’re in Indonesia and have the chance to buy **20 Radiated Tortoises** (an endangered Madagascan turtle) at $50 each from a smuggler who just brought them in . You pay $1,000. They occupy 20 inventory slots. You decide to fly to Europe where each tortoise can sell for around $500. However, you’ll need to declare them as “captive-bred” to fool customs – which requires a forged permit (costing extra bribe money). In transit, a random event strikes: some tortoises show signs of illness (they were packed tightly without water). You lose 5 animals to a disease outbreak mid-flight. You smuggle the remaining 15 through after greasing the right palms, and sell them to an underground reptile dealer for $7,500 total. After costs (bribes, forgeries, losses), your profit might be around $5,000.* This scenario illustrates how buying low and selling high is complicated by the living nature of the goods and enforcement risks.

The trading system thus challenges the player to **balance profit vs. risk** constantly. It’s not just buy low/sell high – it’s also **buy small, smuggle safely vs. buy big, risk mass losses**. Each sale or failed deal will feed into the other game systems, from raising suspicion to altering relationships, detailed below.

## **Bribery and Corruption System**

Corruption is the grease that keeps the illegal pet trade moving. In the game, bribery is an essential mechanic that interacts with law enforcement, logistics, and reputation systems. The player will frequently encounter situations where money can solve problems – at a moral cost.

**Bribery Targets:** The player can bribe various types of NPCs, for different effects:

* **Customs and Border Officers:** These are often the first line of defense against trafficking. A well-placed bribe to a customs inspector can prevent luggage checks or ensure freight containers pass through unchecked. In gameplay, when moving animals through an airport or port, the player might have an option to “Pay off Customs (Cost: $X)” to automatically avoid a random search event. (In real life, every stage from poaching to export can be facilitated by corruption , so the game mirrors that.)

* **Police and Wildlife Agents:** Locally, police might raid warehouses or investigate tips. The player can establish **regular bribe payments** (a “protection money” mechanic) to local police chiefs or enforcement agents. This could be represented by a recurring cost that keeps a “heat meter” down in that region. If a raid event triggers, having bribed the police might either prevent it or give the player advanced warning.

* **High-Level Officials:** For the biggest operations, the player may need to bribe politicians, ministers or agency directors. These expensive bribes could yield significant benefits, such as access to fraudulent permits/certifications, release of seized animals, or quashing of investigations. For example, bribing a CITES official might allow the player to obtain **fake export permits** claiming wild-caught animals are captive-bred – reducing detection risk for those shipments . Another example: if the player is arrested, a bribe to a judge or prosecutor might reduce the penalties or secure an early release.

* **Informants and Others:** The player can also pay informants within law enforcement for intel (e.g. someone inside Interpol sells you a list of suspects so you know if you’re being watched), or even pay off journalists to keep things out of the news. These are situational bribes that may come up as choices during events.

**Bribe Mechanics:** Bribery can be handled in two ways (or a mix):

* **Active Bribes (Event-Based):** The player is presented with a choice to bribe during an encounter. For instance, if a customs officer opens your suitcase and finds animals, the game could offer: **(A) Attempt to Bribe the Officer**, (B) Try to Bluff your way through, (C) Run/abandon the animals. The bribe option would have a cost and a success probability based on factors like how high the stakes are and perhaps the player’s prior relationship with local officials. A successful bribe resolves the event in the player’s favor (though it might increase future bribe costs, as word spreads that you’re willing to pay). A failed bribe could backfire – e.g. the officer takes the money but reports you anyway, or refuses and now is extra vigilant.

* **Passive Bribes (Upkeep/Influence):** The player can maintain an **influence meter** in each location by investing money into corruption ahead of time. For example, you might spend $10,000 in a country to “grease the wheels” for a few months. This could be presented as a **“Corruption Fund”** or **“Bribe Level”** in that region. A high corruption fund might passively lower the chance of being inspected or caught. Essentially, you’re *paying for an easier life*. However, corruption can **breed dependency**: officials may come back regularly for more. The game can simulate this by periodically depleting your influence unless you top it up (e.g. a message, *“The chief of customs hints he expects another ‘gift’ soon”*).

**Consequences and Risks:** Bribery is not a guaranteed safety net:

* **Escalating Costs:** The more you bribe, the more word gets around that you’re a cash cow. Officials may demand higher sums over time (e.g. the first few times $1,000 sufficed, but later they want $5,000 for the same favor). If you refuse new demands, those officials might turn on you out of spite.

* **Untrustworthy Bribes:** Not every bribe works. Some officials might take your money and double-cross you. For instance, a crooked airport officer could accept your bribe to let a shipment through, then *also* tip off the wildlife police to raid you as you exit, collecting a reward on that side too. This double-cross could be a rare event to keep players on their toes.

* **Exposure:** Relying on bribes too much can raise your profile. A news event might report that *“corruption is suspected at XYZ Customs after a series of unchecked shipments”*, temporarily increasing law enforcement presence (i.e. your bribes lose effect until things cool down). In some cases, a major international crackdown could sweep aside your corrupted contacts (e.g. a new honest official replaces the old one ), forcing you to rebuild your influence.

* **Moral Impact:** Although the player character is already a criminal, the act of bribing to cover up horrors can be written in a way to emphasize moral decay. For example, after bribing a vet to ignore abused animals, the narrative might note the character’s numbness or the vet’s disgust.

**Interaction with Other Systems:**

* Bribery ties closely to **Evading Detection** (next section). Essentially, bribes are one of the primary tools for evasion.

* It also links to **Relationships**: some bribes become long-term relationships (a customs agent on your payroll is effectively a contact you must keep happy). If you fail to pay them, they might become an enemy event (e.g. tipping off a bust out of revenge).

* Managing the *economy of bribes* becomes a part of the strategy. Players must allocate a portion of their earnings to corruption, essentially treating it as a “business expense” in their profit calculations. The challenge is deciding how much to invest in safety vs. how much to pocket and expand.

* At the highest level of play, **corruption can be a gateway to expansion**: e.g. bribing a politician might allow you to start exploiting a *government-run animal shelter or zoo* for supplies, or get heads-up on law enforcement plans so you can smuggle proactively around them.

In summary, the bribery system reinforces the theme that **money can mask evil**, but only to a point. It’s a constant shadow negotiation with the system, and if you ever run short on cash or get too greedy, your web of corruption might unravel at the worst time.

## **Law Enforcement and Evasion System**

Throughout the game, the player must contend with law enforcement pressure. This system governs how the game models the risk of getting caught and the cat-and-mouse dynamic between the player’s smuggling operations and those trying to stop them. It also includes non-law enforcement adversaries like animal rights activists who can interfere.

**Suspicion/Heat Meter:** The game uses a **“Heat”** or **“Notoriety”** meter to track how much attention the player’s activities are attracting. This meter increases when the player engages in high-profile or frequent illegal acts – large shipments, dealing in very high-value species, or public incidents (like a buyer’s pet escaping and making news). It can also spike due to specific events (e.g. a whistleblower or rival leaks info to authorities). A low heat means you’re under the radar; a high heat means active investigations are underway on your network.

* Heat can be reduced by lying low (skipping trading actions for a while), changing territory (authorities in one country might not inform another immediately), or via **bribery** as discussed (paying for information or to destroy evidence).

* The game might display heat as a percentage or level (e.g. 0-100, with thresholds that trigger different law enforcement responses).

* **Heat effects:** At moderate levels, you might see more frequent inspections or surveillance events. At critical heat, you risk full busts or raids frequently.

**Detection Checks:** Whenever the player moves animals or conducts a deal, there’s a chance of detection. These are essentially dice rolls influenced by circumstances:

* If you carry animals through an airport without any bribe or cover, a **customs inspection event** might fire. The chance could depend on heat and the type/quantity of animals (smuggling 50 rare reptiles in socks is more conspicuous than 1 parrot with a fake permit).

* Random airport/border events may include drug-sniffing dogs (which could inadvertently find animals), X-ray scans (which can see hidden animals, like the infamous case of the **tiger cub in luggage discovered via X-ray** ), or an officer noticing something odd (sounds, smells).

* If you maintain a stash house or aviary, there could be **raids**. These might be random or triggered by heat. A raid event would say, for example, *“Wildlife officers and police are at the door of your warehouse with a warrant.”* The player’s options might include: attempt to flee (leaving animals to be seized), hide evidence (if there’s time, e.g. release animals out the back, which could have other consequences), or resist (not typically a good idea in this context, but maybe if you have an armed crew it’s an option, at risk of lethal outcomes).

* **Undercover stings** are another detection mechanism. If the player is advertising or reaching out for big buyers (perhaps on dark web forums or through criminal contacts), there’s a risk that some buyer inquiries are actually fronted by law enforcement or activist groups. A scenario could be: *“You arrange a sale of two chimps to a new buyer, but when you arrive, it’s an NGO trap – cameras flash and police move in.”* The outcome could depend on precautions (if you insisted on meeting in a secure location or you had a bodyguard) or simply lead to an arrest event.

**Consequence of Arrest:** If the player gets caught by law enforcement, several things could happen based on game design:

* **Game Over Scenario:** In a hardcore mode, being arrested (especially with high heat and serious charges) could immediately end the game – you are behind bars and your operation is dismantled.

* **Penalty and Continuation:** Alternatively, the game might allow continuation with heavy losses. Perhaps you manage to secure bail or escape custody (maybe via bribes or a daring event), but at the cost of losing a chunk of money, all your current inventory (seized), and a big hit to your reputation (suppliers and buyers may distrust you now, fearing you’re under watch or will rat them out).

* Possibly implement a **“lives” or strikes system**, where minor arrests are survivable but each one ramps up difficulty for the next (and after, say, 3 strikes, it’s game over).

* In any case, an arrest should be a significant setback that the player is motivated to avoid. This underlines the stealth strategy needed.

**Animal Rights Groups and Whistleblowers:** Not all threats come from official law enforcement:

* **Activist Interference:** Organizations or vigilante activists might try to **expose or sabotage** the player. For example, if the player is keeping dozens of animals in a warehouse, an activist group might break in to film conditions or free the animals. A random event could describe how *cages were found open and animals released* – resulting in lost inventory and potentially media coverage that raises public awareness (increasing heat). Or an activist poses as an employee to gather evidence.

* **Journalistic Investigations:** A reporter could start sniffing around if there are strange occurrences (e.g. exotic pets seen in a celebrity’s home). The player might have the option to bribe or threaten the journalist, or let them publish (which would spike heat massively).

* **Internal Whistleblower:** If the player treats their people badly or an NPC with a conscience witnesses something truly horrific (like mass animal deaths), they might tip off authorities. This would trigger a surprise raid event or fast increase in heat. The player’s earlier choices (e.g. whether they established loyalty or fear in their crew) could influence this – if you never invested in keeping your helpers happy, one might become the leak.

**Evasion Strategies and Tools:** The game provides methods to proactively reduce detection risk:

* **Multiple Smuggling Techniques:** As detailed in logistics, the player can choose stealthier methods for critical shipments. For instance, sending many small parcels via mail instead of one big shipment might lower the chance of a total bust (spread out risk, though each has some chance of being caught). Or using overland routes through less monitored crossings instead of major airports.

* **False Documentation:** By acquiring fake permits, health certificates, or even disguising animals as legal species, the player can fool some checks. E.g., label a shipment of endangered turtles as “captive-bred geckos with paperwork” – requiring an investment in forgery. A document fraud system could reduce random inspection chances or severity of punishment if caught (since you can pretend it was a paperwork mistake).

* **Safehouses & Re-routing:** The player might maintain multiple storage locations and rotate stock between them, so any single raid won’t catch everything. Also moving operations if things get hot: if one country is on alert, shift to a different export hub for a while (there’s evidence traffickers do this in real life – shifting routes when enforcement tightens).

* **Counter-Surveillance:** High-level upgrades might include things like a friendly contact in the police who feeds you warnings (“your warehouse is being watched, move the animals now”) or technology like radio scanners to pick up if enforcement is nearby. Perhaps the player can pay for a mole in the local police who gives periodic reports (modeled as reducing the chance of surprise events).

* **Decoys:** The player could intentionally sacrifice something to distract law enforcement. For example, tip them off (anonymously) about a *different* smuggler’s shipment, so while they’re busy with that, your big shipment goes through elsewhere. This could be a strategic event choice, essentially trading a temporary reduction in heat (and maybe eliminating a competitor) at the cost of some reputation (snitching might anger others if discovered).

**Law Enforcement Escalation:** As the player’s operation grows, law enforcement responses escalate:

* Early on, you might just face a lone customs agent or a routine checkpoint.

* Later, international agencies (like Interpol’s wildlife trafficking unit) may coordinate multi-country operations against you. In gameplay terms, events might chain together: e.g. first your supplier in country A is busted (one of your supply lines cut), then they flip and give information that leads to a buyer in country B being arrested, and finally that leads to *your name* coming up as a kingpin, triggering a massive raid on your base.

* This escalation creates a potential **endgame scenario**: either you successfully navigate and survive until you retire rich (if that’s an option), or you eventually get taken down by the increasingly coordinated global effort against you. The player can only keep ahead of the law for so long, which adds tension to long-term play.

**Example Event – Evasion in Action:**

*You are crossing a remote border by truck with a load of 50 rare lizards hidden in false compartments. Your suspicion level is moderate. A checkpoint appears (random event): border guards are stopping vehicles, looking for contraband. Because you bribed a local official earlier, you were tipped off that this checkpoint might happen, so you have two plans ready: (A) **Play it cool** – rely on your hidden compartments and forged papers claiming the lizards are legal breeds (80% success chance given your prep), or (B) **Offload and detour** – take a risky unpaved route around the checkpoint at the cost of a day’s delay (no immediate risk of capture, but each extra day means a few lizards might die from lack of food). You choose (A). A guard questions your cargo; you present the papers confidently. A tense moment passes… the documents hold up. You’re waved through, but you notice one guard eyeing your truck suspiciously as you leave (heat increases slightly, he’s not fully convinced).*

In summary, the Law Enforcement and Evasion system ensures there’s always a looming threat to the player. It converts their growing success into growing danger, forcing them to invest in secrecy, pay off officials, and make hard choices to stay out of jail. This constant pressure is critical to achieving the “horrifying” tone – no matter how well you plan, **you are always one slip-up away from disaster**, as is true in real trafficking operations.

## **Relationships and Contacts System**

Illegal trafficking is not a one-person show; it requires a network of people performing various roles. This system manages the **social aspect** of the game – the player’s relationships with suppliers, buyers, and other associates – and how those relationships affect gameplay. It adds a layer of interpersonal strategy on top of the economic and risk management gameplay.

**Key Contact Types:**

* **Suppliers:** These are sources for animals. They include poachers in the field (catching wild animals), breeders running clandestine farms, corrupt zookeepers or animal sanctuary employees who siphon off animals, and other smugglers willing to sell you stock. Each supplier might specialize in certain species or regions. For example, one supplier may be a bird trapper in the Amazon, another might be an insider at a Southeast Asian tiger farm.

* **Buyers/Clients:** The end customers for your animals. These range from wealthy private collectors and exotic pet owners (some might be eccentric celebrities or royalty), to owners of illegal zoos or “menageries”, to research laboratories needing test animals, to possibly dealers who supply traditional medicine markets (though the focus is pets, one could have a buyer who actually wants animal parts, highlighting another cruel angle). Buyers may have specific preferences (“I only want venomous snakes”) and different levels of fussiness (a high-end collector demands perfect specimens; a roadside zoo will take anything cheap).

* **Facilitators:** Middlemen who help along the chain. This includes:

  * **Transporters/Smugglers:** People you hire to physically move animals if you’re not doing it yourself. They have skills and trust levels – a reliable driver who has secret compartments, or an unethical flight attendant who for a fee will load your crates without inspection, etc.

  * **Fixers/Informants:** Individuals who arrange deals or provide information. For instance, a local fixer in a port city might connect you with bribable officials or alert you of undercover operations. They often require payment or cuts of profit.

  * **Veterinarians/Handlers:** Possibly contacts you keep to maintain animal health (legal vets might not cooperate, but a corrupt vet can treat injured smuggled animals quietly – if you keep them happy).

  * **Security/Thugs:** If the game involves any intimidation or need for force, these contacts could handle “dirty work” (like silencing a whistleblower or protecting a shipment from rival criminals).

Each contact can have a **relationship meter** or status: maybe a 0-100 scale or simple tiers (Hostile, Suspicious, Neutral, Friendly, Loyal). High relationship means they trust you and go the extra mile; low means they might betray or refuse you.

**Building Relationships:**

* Early on, you start with maybe one modest supplier and one buyer. As you successfully complete deals, those relationships improve. Suppliers might then offer better animals or bigger quantities. Buyers might pay more or ask you first for new orders.

* You can improve relationships by doing favors or through **interaction choices**:

  * Paying them on time (e.g. if a supplier fronts you animals on credit, prompt payment increases trust).

  * Giving bonuses or gifts: you might occasionally choose to give a supplier a bonus to help their community (some flavor text: you fund your poacher’s village well, so they stick with you).

  * Honoring deals: If a buyer orders 10 monkeys and you deliver all 10 healthy, your reliability score goes up.

  * Conversation and choices in events: e.g. if a supplier is in trouble (their men got arrested), you might help bail them out or send help, boosting loyalty.

* Conversely, negative actions hurt relationships:

  * Shorting a supplier on payment or a buyer on delivery.

  * Causing unwanted attention that falls back on them (if your buyer’s purchase leads to a raid at their house, they’ll be angry).

  * Treating contacts as disposable (e.g. you let a hired smuggler get caught to save yourself; if they survive or their friends know, others will trust you less).

**Reputation vs. Individual Relationships:** The game likely has both:

* **Global Underworld Reputation:** an aggregate that rises as you succeed. A high rep means new contacts proactively approach you with offers (e.g. *“Heard you can get exotic birds, I have a client paying top dollar for cockatoos”*). It might also intimidate some (maybe officials fear you if you’re known to be ruthless, giving you leverage). However, a high underworld rep could correlate with high law enforcement heat – you become a known kingpin.

* **Individual Relationship Scores:** which allow for granular stories (one supplier could hate you while another loves you, depending on how you’ve treated each).

**Interlocking with Gameplay:**

* If you have a **great relationship with a supplier**, they might:

  * Give you first pick of their best catch before offering to others.

  * Offer goods on credit (trusting you to pay after you sell).

  * Warn you if they hear of dangers (a poacher might say “parks are crawling with rangers right now, maybe hold off hunting” which effectively warns of higher risk in that region).

* If a supplier is **mistreated or unhappy**:

  * They might cut you off, forcing you to find new sources (slowing your business).

  * In worst case, they might *betray you* to authorities to save themselves if caught. For example, if a poacher gets arrested and hates you (perhaps you underpaid them or they blame you for their capture), they’ll readily give your name as part of a deal.

* If you have a **strong bond with a buyer**:

  * They become repeat customers, and might accept occasional delays or issues without tanking the relationship.

  * They could introduce you to their elite friends, expanding your clientele (e.g. a happy wealthy client tells another collector about you).

  * However, they might also ask more dangerous favors (“Can you get me something even rarer, like a tiger?” which ups the stakes).

* If a buyer is **displeased**:

  * They stop buying and bad-mouth you in the underground, hurting your reputation.

  * A particularly angry buyer might pose a threat – e.g. a crime lord buyer you failed could retaliate and steal animals or money, or tip off police out of spite.

* **Employee contacts (smugglers, vets, etc.):** If happy, they work efficiently (lower risk in their tasks). If unhappy, they might become liabilities (steal animals, do sloppy work that leads to exposure, etc.).

**Character Profiles:** To add depth, each important contact might have a short profile and traits:

* e.g. **“Alejandro – Amazon Bird Poacher: Relationship 70 (Friendly).** Trait: Superstitious (unlikely to smuggle animals he considers bad luck). Note: Provides parrots and monkeys from Peru. Trusts you because you helped his family once.”

* These traits could affect event outcomes (Alejandro might refuse to catch certain species, or might warn you of forest spirits in flavor text, etc.). While not crucial to mechanics, it humanizes the network.

* Another example: **“Dr. Chen – Underground Vet: Relationship 50 (Neutral).** Trait: Compassionate (unhappy when animals suffer). If too many injured animals brought, relationship drops faster.” This vet might quit or report if you repeatedly bring horribly mistreated animals to her, reflecting the ethical stress.

**Networking and Social Web:** The player can seek new contacts via deliberate actions or events:

* Visiting a known black market or wildlife trade hub might allow you to meet new suppliers (e.g. a menu option: “Look for sellers in Chatuchak Market (Bangkok)” which could yield a random encounter with a potential contact).

* Some contacts might demand proof of trust or require an introduction from an existing contact.

* There could be a **social currency** concept: e.g. **Reputation Points** that you spend to gain introductions or favors. High rep might automatically unlock contacts at certain thresholds.

**Rival Traffickers:** While not exactly “contacts,” the game might include AI competitors. You don’t directly cooperate with them (except maybe through cartel-like agreements), but they can influence relationships:

* A supplier might suddenly stop selling to you because a rival offered them a better deal or intimidated them.

* Rivals could attempt to poach your buyers.

* In events, a rival’s action could force you to respond (like they flood the market with cheap snakes, crashing your prices; or they tip authorities about you to thin competition).

* You might never see these rivals, but hear of their deeds in news/events. Possibly you can decide to deal with them (ignoring them, collaborating, or sabotaging them).

**Example of Relationship at Play:**

*Your trusted supplier Rani (Relationship 85\) in India provides you with star tortoises. She hears that one of her trappers was caught. Because she trusts you, she asks for your help to bail him out. You have a choice: Pay $2,000 for the trapper’s legal fees, or decline. If you pay, Rani’s loyalty becomes Unshakable (100) – she later goes out of her way to hide some animals for you during a sudden raid, saving them from confiscation. If you decline, your relationship drops; she feels you don’t support your partners, and next time she might not warn you of dangers. In fact, if it drops too low, she might quietly start dealing with someone else or, if cornered by police, mention your name.*

This system ensures the game isn’t just about abstract numbers, but about *people* – each with their own motivations. It emphasizes that the illegal pet trade is a chain of human actors, not just goods, adding to the narrative depth and the *“honesty”* of depicting how such networks function (with mistrust, betrayal, loyalty, and fear all mixed together).

## **Logistics and Transport System**

Moving live creatures covertly across distances is one of the toughest aspects of the illegal pet trade. This system focuses on how the player physically transports animals and the challenges encountered in transit. It intersects heavily with both the trading (source to market flow) and evasion (risk of detection) systems, as well as introducing unique risks like animal mortality and disease spread.

**Transport Methods:** The player has multiple options to transport animals, each with pros and cons. The main transport modes include:

* **Commercial Air Travel (Passenger):** Carry animals on your person or luggage on normal flights.

  * *Usage:* Useful for small animals (birds, reptiles, infants) in limited quantities. Often involves hiding creatures in suitcases, clothing, or special containers.

  * *Risks:* Airports are high-security. X-ray machines and baggage inspections are a major threat (e.g. the x-ray-detected tiger cub incident ). If caught here, consequences are immediate. Also, animals in luggage may suffocate or be crushed by baggage handling .

  * *Costs:* Buying plane tickets, plus the risk of confiscation (loss) if caught. Perhaps minor bribes to low-level staff can help (like paying a check-in agent to “overlook” weight or noise).

  * *Time:* Very fast (hours to a day).

  * *Capacity:* Very limited (what one person can carry, maybe 1-2 suitcases or hidden on body). For example, someone managed **50 snakes in a carry-on by stuffing them in socks** , but that’s extreme and risky.

  * *Mortality:* High if animals are not appropriately packed (lack of air, temperature issues). The game might simulate that if you cram too many in or choose this method often, you get frequent losses.

* **Air Cargo (Freight):** Ship animals as cargo (often mislabeled).

  * *Usage:* For larger quantities or bigger animals, using cargo planes or the cargo hold of passenger planes with proper crates (albeit under false pretenses).

  * *Risks:* Requires either fake documents (like declaring animals as legal or as other products) or bribed cargo handlers/customs. If something seems off (e.g. movement or noise from a crate), inspections can occur. High-volume seizures often happen via cargo when tips are received .

  * *Costs:* High. Need to pay for freight, and usually bribe officials to get paperwork or overlook contents. Possibly need to rent special crates (which could be a one-time purchase upgrade in game to have “camouflaged shipping crates”).

  * *Time:* Fast (1-2 days internationally).

  * *Capacity:* High (you could send dozens of animals or large ones like adult reptiles, even big cats sedated in crates).

  * *Mortality:* Medium – if you invest in decent crates (ventilation, space), animals fare better. But if you cut corners (stuff many animals into a single crate with little food/water to save space), mortality rises . Also, if delays happen (plane rerouted, stuck at customs), animals could die waiting.

* **Sea Freight (Shipping Containers):** Concealing animals in sea cargo.

  * *Usage:* Suitable for very large shipments or very large animals (e.g. smuggling a bunch of tortoises mixed in produce crates, or small mammals hidden among legal goods).

  * *Risks:* Sea ports can be slightly less strict than airports but are still monitored. Long transit times mean higher chance something goes wrong (container left in heat, animals run out of supplies). However, huge volume of cargo means inspections are relatively rare unless tipped off.

  * *Costs:* Renting or buying container space, plus potentially bribing port officials at departure and arrival. You might also need to set up a **front company** to ship goods legally as cover.

  * *Time:* Slow (weeks). This means animals might need to survive many days; only hardy ones or with self-contained environment can make it.

  * *Capacity:* Very high (an entire container can hold hundreds of animals if needed).

  * *Mortality:* Very high for long durations. Without expert preparation, many animals die in transit from starvation, dehydration, or disease outbreak in the confined space. (A real example: a shipment of 100 turtles in a container might arrive with a large portion dead or sick .)

* **Land Transport (Vehicle or on Foot):** Driving or carrying across borders via roads, footpaths.

  * *Usage:* Effective for regional trafficking (e.g. within contiguous countries). Animals can be hidden in cars (false compartments, engine bays) or even carried by couriers over remote border crossings.

  * *Risks:* Land borders vary – some are heavily guarded, others porous. Checkpoints on major roads can be bribed or avoided by taking backroads. On long drives, there’s risk of traffic stops or accidents exposing animals.

  * *Costs:* Fuel/vehicle costs, possibly paying smugglers or drivers. If using an organized network, might have to pay local guides.

  * *Time:* Medium (days, depending on distance).

  * *Capacity:* Moderate – a car can only hide so much (maybe a few crates, or small animals hidden in many nooks). Larger convoys or trucks increase capacity but also risk.

  * *Mortality:* Medium – better than air in that you can theoretically take breaks to check animals (if it’s you driving), but if using hired couriers, they may treat animals as cargo and not tend to them. Conditions like heat in a sealed car trunk can kill animals quickly.

* **Mail and Parcel Services:** Shipping animals in packages through postal or courier services.

  * *Usage:* Very small animals (reptile hatchlings, spiders, etc.) are sometimes sent in the mail, labeled as other items.

  * *Risks:* Packages go through X-rays and scanners, but small creatures can sometimes slip by or be misidentified. If discovered, it usually leads to a controlled delivery or seizure. The sender might remain unknown unless traced. So risk of direct arrest is lower, but you lose the animals.

  * *Costs:* Low per package, but you’re limited in what you can send per parcel (plus risk of loss is high).

  * *Time:* Medium (days to a week).

  * *Capacity:* Very low per package (a few small animals each). To move volume, you’d have to send many packages, which increases cumulative risk.

  * *Mortality:* Extremely high if the animals are not packed properly (no climate control, limited air). Smugglers often don’t feed or water them to avoid mess/smell , which means many arrive weak or dead. For instance, cases of reptiles shipped in mailing tubes often report many DOA (dead-on-arrival) animals.

The player can choose methods per shipment, and even mix methods (e.g. split a large batch, sending some by air and some by mail, diversifying risk).

**Logistics Planning:** To successfully transport, the player must plan:

* **Route Selection:** Maybe a world map UI where you pick a route (like “Source: Congo → Transit: Dubai → Destination: Paris”). Different routes have different risk profiles; major hubs might have more corruption but also more enforcement, while remote routes are slower. If the game doesn’t simulate specific transits, it could simplify to “Risky vs Safe route” toggles with time differences.

* **Concealment and Equipment:** The player can invest in better equipment to improve odds:

  * Hidden compartments in vehicles.

  * Special crates with false bottoms or oxygen supply.

  * Sound-dampening containers (so animals’ noises aren’t heard).

  * Use of sedatives to keep animals quiet (with the danger of overdosing them).

  * For aquatic animals, portable aeration devices in containers.

  * These upgrades could reduce detection chances or mortality rates. For example, an **“Oxygenated Reptile Container”** item might cut in-transit deaths by half for reptiles, but might increase suspicion if scanned (due to visible tech).

* **Timing:** Perhaps schedule shipments at certain times to avoid scrutiny (e.g. around holidays when customs is busy or at night). The game might allow “Wait for ideal time” choices that reduce risk but take more turns.

**Random Transit Hazards:** While on route, aside from law enforcement events, there are pure logistical hazards:

* **Animal Illness or Injury:** If conditions are poor, animals can get sick (like a virus spreads in a group of turtles ). The player then has to decide: do you stop and try to treat them (delay and risk exposure) or press on and possibly lose many? This might be an event like “*Several animals show signs of disease in transit. Delay arrival by 1 turn to administer basic care? (If not, 50% of the sick animals may die).*”

* **Escape:** Animals might escape containment. E.g. spiders get out of their containers in a plane’s cargo hold, or a snake in your car slips out when you stop – this could create a panic (leading to exposure) or just lost inventory.

* **Environmental extremes:** A container left on a hot tarmac in the sun or a truck stuck in a cold snap can threaten the animals. The player might mitigate this with certain prep (like climate-controlled containers).

* **Theft or Loss:** In criminal underworld, one must worry about double-cross. A hired driver could decide to steal the valuable animals and run. Or pirates might hijack a ship container (rare, but possible if they think it’s high value cargo). The game could throw an event: “Your hired courier has disappeared along with the shipment.” (If you had a strong relationship or had paid for insurance measures, maybe this is less likely or you have recourse.)

**Disease Transmission Risks:** A unique aspect of wildlife trade is the spread of diseases (to animals and even humans). We can incorporate this:

* If the player mixes species from different places, there’s a chance of disease outbreak (like the **ranavirus outbreak among smuggled turtles** that killed many , or exotic Newcastle disease from smuggled parrots that killed millions of domestic birds ).

* A disease event might kill a portion of your inventory suddenly. If it’s a zoonotic disease (transmissible to humans), it could also temporarily sideline the player or scare buyers (nobody wants to buy animals right after news of a disease).

* Authorities pay extra attention to disease outbreaks, so an outbreak could increase heat. For example, *“News: Mysterious disease in local market birds traced to smuggled parrot – authorities vow crackdown .”* If this traces to you, you might get a massive investigation event.

* The player might then consider steps like quarantining new animals (slowing trade but reducing cross-contamination risk), or only sourcing from one region at a time to avoid mixing pathogens.

**Transport Table:** (Summarized some info as a quick reference, similar to earlier table format):

| Method | Speed | Cost | Capacity | Detection Risk | Mortality Risk |
| ----- | ----- | ----- | ----- | ----- | ----- |
| **Passenger Air (Carry-on/Luggage)** | Fast (hours) | Low (ticket \+ small bribe) | Very low (1-2 suitcases worth) | High – strict airport checks (X-rays, sniffer dogs) ; immediate arrest if found. | High – cramped hiding \= suffocation/starvation common . |
| **Air Cargo** | Fast (1-2 days) | High (freight fees, multiple bribes) | High (crates of animals) | Medium/High – requires fake papers or insider help; large shipments draw attention without corruption. | Medium – better than luggage if proper crates used; still risk if delays occur. |
| **Sea Freight** | Slow (weeks) | Medium (ship fees, some bribes) | Very high (whole container) | Medium – lower scrutiny per container, but if caught consequences big due to volume. | Very High – long duration leads to many deaths if not expertly managed (food/water withheld to prevent waste ). |
| **Land (Vehicle)** | Medium (days) | Medium (fuel, maybe driver bribes) | Moderate (car load or truck) | Variable – depends on route; minor crossings low risk, major checkpoints high risk (can often bribe through) . | Medium – periodic checks can save some animals; but accidents or heat in vehicle can kill. |
| **Mail/Parcel** | Medium (days-week) | Low (postage) | Very low (small animals per package) | Medium – some packages get flagged; if seized, might not trace back immediately. | Very High – rudimentary packing \= many die en route. Few survive unless extremely hardy. |

The player must weigh these options for each operation. Early on, they might personally fly with a few creatures (small scale, high personal risk). Later, they might be orchestrating multiple shipments at once through different channels – exemplifying the *logistical complexity* of a larger trafficking ring.

**Upgrades and Strategy:** As part of progression, the player can mitigate logistic risks:

* Develop a **safe route**: e.g. find a lightly monitored border and establish it as your pipeline (perhaps by bribing the regional commander heavily).

* Acquire a **safehouse network**: small stations to rest animals on long journeys (reducing travel mortality).

* Train or hire **specialist smugglers**: people known for creative concealment (like experts who can surgically implant small animals into other cargo, albeit that’s quite cruel).

* Use **diversion tactics**: e.g. send a decoy shipment with low-value animals on one route to draw police, while the main high-value shipment goes on another.

* Ultimately, maybe even buy a **private plane or boat** under a front company. This would allow you to attempt direct smuggling with less third-party interference, but if caught it’s all on you.

Through the logistics system, players experience first-hand why wildlife trafficking is **logistically daunting and deadly for the animals**. It brings to life scenarios such as dozens of creatures being discovered stuffed in socks and containers , or a smuggler having to dump animals by the roadside to avoid a checkpoint. Every choice in transit is a gamble between profit and the lives of the animals in tow.

## **Ethical Stressors and Morale System**

This system addresses the **psychological and ethical dimension** of the gameplay, ensuring that the “honest and horrifying” tone is not just external (what the player sees happening) but also internal (potentially affecting the player character or the decisions available). It’s about how much the protagonist – and by extension the player – can stomach the atrocities they are part of, and what impact that has on the gameplay.

**Player Character Morale/Conscience:** The game can assign a value to the character’s state of mind, often referred to as **Morale**, **Stress**, or **Conscience Meter**. This meter starts at some baseline and is affected by particularly disturbing or taxing events:

* Seeing or causing **mass animal suffering** might decrease morale (if we assume the character isn’t a complete sociopath from the start).

* For example, if “20 out of 50 smuggled parrots died in transit from suffocation,” the game might reduce your morale significantly that turn, indicating the mental toll .

* Other triggers: being forced to kill an associate, constantly living in fear of arrest, contracting a disease from an animal, or even *nightmarish scenes* (perhaps an event describes vividly the state of animals you handled – e.g. *“To see them unpacked is devastating… some have taken their last breath as we’ve unpacked”* , reminding you of the cruelty).

**Effects of Low Morale:** If the character’s morale drops too low, various effects could occur:

* **Decision Impairment:** The player might lose certain options. For instance, they might freeze during an event (unable to choose the boldest option) or become risk-averse (automatically avoiding big deals because the character’s nerve is faltering).

* **Penalties:** A depressed or stressed trafficker might make mistakes. This could be abstracted as a higher chance of random failures or a reduction in negotiation ability (e.g. you get worse prices because you’re off your game).

* **Game Over by Burnout:** If there is a threshold where the character’s conscience breaks entirely, the game might end with the narrative of them walking away or being psychologically unable to continue. Another ending could be the character deciding to turn themselves in or whistleblow to atone (a sort of “redemption” ending, albeit resulting in their arrest).

**Coping Mechanisms:** The player can take certain actions to manage their stress or ignore their conscience:

* **Use of Substances or Vices:** In a dark twist, the game could allow the character to dull their conscience with alcohol or drugs (historically, criminals sometimes do this to cope). This might temporarily raise morale (allowing you to continue operations) at the expense of some other penalty (maybe increased chance of mistakes or an event where your addiction creates problems).

* **Justification and Compartmentalization:** Perhaps through narrative, the character tries to justify their actions (“If I didn’t sell these animals, someone else would” or “I need the money for my family”). As a design element, this could be just flavor text, or could tie to a “Morality choice” system – e.g. occasionally you get to pick a justification that slightly eases the conscience hit.

* **Taking Breaks:** The player can choose to **lie low** for a while, effectively not doing any crimes for a few turns, which might let their stress recover. But this has the cost of missed opportunities and possibly losing some contacts due to inactivity.

* **Less Cruel Methods:** The player can invest in more humane handling (better transport conditions, etc.) not out of altruism but to avoid the emotional toll of deaths. The game can incentivize this indirectly: if you keep animals alive and healthy (with more effort and cost), your conscience doesn’t deteriorate as much. This would be an interesting mechanic: *spend money to be slightly less cruel \= feel a bit less bad.* It’s still immoral, but it’s a spectrum.

**Ethical Choices:** The game can present specific **moral dilemmas** where the player must choose between profit and empathy:

* e.g. “A shipment of rare lizards arrives, but half are starving and covered in parasites. Do you pay for a vet and proper care before selling (costing money, delaying sale, but alleviating suffering), or sell them immediately to an exotic pet shop as-is (maximizing profit but many will likely die)?”. The choice could affect both outcome (healthy animals sell for more in long run, but delay might risk detection) and morale (helping them might give you a morale boost, ignoring them might hit your conscience).

* Another: “Your smuggler reports that if you pack the animals tighter and withhold food/water for 3 days, it will avoid mess and noise during the trip , but it will be very cruel. Do you authorize this practice?” If yes, maybe a \+10% chance to avoid detection (no smell, quieter) but a big morale hit and increased mortality. If no, you take a higher detection risk but keep a moral line.

**Impact on Endings:** If the game has multiple endings, the conscience system could influence them:

* A **“Horror Ending”** if you ignore morality completely: you become a notorious trafficker but perhaps lose your humanity. The ending text might describe you as a monster or eventually meeting a violent end (because you had to harden yourself and that led to some downfall).

* A **“Redemption/Collapse Ending”** if you try to hold onto morality but continue the trade: eventually you might snap and help the authorities bust your own ring or quit in disgust, possibly avoiding prison but living with guilt or turning witness.

* A **“Neutral Success Ending”** if you somehow balance it: you get out rich and not in jail, but the emotional toll is immense – perhaps implying that no one really ‘wins’ in this line of work mentally.

**Employee Morale / Ethics:** Not only the player, but those working for them might have breaking points:

* As noted earlier, a vet or a handler might quit or betray you if they can’t take the cruelty. This can be tied to how often particularly ghastly events happen under your watch. For instance, if an assistant has seen dozens of dying animals repeatedly, an event might trigger: *“Your assistant, shaken by the last shipment’s condition, is threatening to go to the press.”* Then you have to deal with it (bribe or otherwise).

* This adds another layer: if you keep operations a bit “cleaner”, your staff are easier to manage. If you push extremes, you have to operate either entirely with equally sociopathic individuals or risk internal collapse.

**Maintaining Tone:** The ethical stress system ensures that the game’s tone (“horrifying”) is also reflected in gameplay pressure, not just narrative. It’s a reminder that doing these actions is not normal or without personal consequence. However, the design should be careful: it shouldn’t be so punishing that players are forced to stop playing (that would undermine the simulation aspect). Instead, it’s about making them *feel* the weight and perhaps altering strategy (maybe choosing to be a “slightly less cruel trafficker” as a playstyle, even if it costs some efficiency).

**Example Ethical Event:**

*You open a shipping crate to find a scene of carnage: dozens of rare reptiles you were moving have been packed in pillowcases and duct-taped to avoid noise . Many are barely alive; a few are already dead, excrement and blood in the box. The smell is overwhelming. This is the first time you’ve seen such a severe outcome. You feel a pit in your stomach.* (At this point the game might impose a morale drop and present options:) *Do you:*

* *A) Clean up and press on, tally the losses and continue business as usual (Your conscience hardens; you take a big stress hit now, but no immediate gameplay effect beyond losing those animals).*

* *B) Pause operations to recuperate from this (Skip next turn to recover some morale; maybe lose an opportunity but prevent a breakdown).*

* *C) Have a breakdown (perhaps an automatic event if stress was already low: your character drinks heavily, contacts an old friend expressing regret – flavor text – and you lose a bit of time and money while regaining some composure).*

In this way, the Ethics/Morale system personalizes the horror. It reinforces that the game isn’t just about balancing spreadsheets of illegal goods; it’s about the human capacity to rationalize cruelty, and the limits thereof. It adds depth and a subtle layer of difficulty, as ruthless decisions might make business easier but push the character towards a mental brink, which in turn can circle back to tangible risks.

## **Progression and Advancement Systems**

To keep players engaged long-term, the game offers a progression structure where new capabilities, locations, and challenges unlock as the player grows their operation. This section details how the player advances, what metrics indicate progress, and what rewards or changes come with progression.

**Primary Progress Metrics:**

* **Money/Profit:** The simplest measure of success. Accumulating wealth allows the player to reinvest in their business. We might set milestone goals (e.g. reaching $100k, $1M, $10M) as soft targets that unlock new options or chapters. In a high-score sense, money can also contribute to a final score or rating (similar to Drug Wars where final score was based on cash ).

* **Reputation (Underworld):** We’ve touched on this – a high reputation is an indicator of progress in terms of criminal status. Early game, your rep is low: you’re a nobody. Mid-game, you gain a nickname and recognition in trafficking circles (NPCs refer to you with respect or fear). Late game, you might be infamous, known by authorities and criminals globally. Reputation unlocks things like bigger deals (people trust you can handle volume) and more dangerous opportunities. However, it also indirectly increases difficulty by raising law enforcement attention (infamy).

* **Territorial Expansion:** This measures how far your network reaches. It could be quantified by number of regions you operate in or control. For example, the world might be divided into regions (Latin America, North America, West Africa, East Africa, South Asia, Southeast Asia, East Asia, Middle East, Europe, Oceania). You might start in one region and through investment and contacts, expand to others. Expansion could require specific actions: e.g. to move into East Asia markets, you need a local partner or enough capital to establish a base there. Each new territory might bring new species to trade (African ivory and pangolins in Africa, birds and reptiles in Latin America, etc., although the focus is pets, not parts, we can still consider species variety).

* **Infrastructure/Assets:** The tangible assets you accumulate form another progression aspect:

  * Safehouses, warehouses, or private menageries to store animals.

  * Vehicles (from a simple van to perhaps owning a cargo truck, then a private plane).

  * Front businesses (a pet shop as cover, a farming facility to launder animals as “captive bred”).

  * These can be represented abstractly by an “Infrastructure level” or individually managed upgrades. Owning more assets improves capacity and reduces certain risks, but might incur maintenance costs.

**Unlockable Systems or Abilities:** As you progress, you might unlock:

* **Larger Crew:** Initially you do everything yourself (travel, smuggle). Later you can delegate (send employees on missions). This changes gameplay from micro-managing single trips to macro-managing multiple simultaneous operations. For instance, at high level you could coordinate 3 shipments at once (with some UI to assign tasks to different crew members), essentially increasing throughput but requiring oversight.

* **Cartel Formation:** Perhaps at endgame, you can form a coalition with other traffickers or absorb smaller rings, effectively becoming a kingpin. This might turn the game into a semi-empire management where you’re not just trading but controlling segments of the market. (This could be as simple as narrative – e.g. “You’ve eliminated most competition in Southeast Asia – now 80% of illegal pet trade here goes through you.” – which could boost profits but also risk.)

* **Political Influence:** A late-game unlock might be the ability to influence politics – such as getting a corrupt ally appointed to a key position (head of customs, minister of environment). This would drastically reduce detection in that territory for a time (until maybe an international scandal or change of government).

* **Money Laundering/Finance:** As money piles up, dealing with it becomes a subplot. The game could introduce the need to launder money via businesses or offshore accounts. Successfully doing so protects your wealth (and maybe even is a win condition to retire), whereas failure could result in financial investigations. This is more of a sideline system, but it’s realistic that large sums have to be hidden.

**Difficulty Ramp and New Challenges:** With progression, the game should introduce new difficulties to avoid things becoming too easy when rich:

* The scale of events grows. For example, when you’re small, a “bust” might mean losing 5 lizards. When you’re large, a single bust could seize 50 animals and millions in funds. Law enforcement might also shift tactics: from random inspections to targeted stings and multi-country operations. Activists might target you personally with undercover operations.

* **Internal Issues:** As you grow, managing your own network becomes challenging – perhaps employees might fight, a branch of your operation might skim money, etc. The player might need to appoint lieutenants or manage personnel in a simple way to handle growth.

* **International Treaties & Crackdowns:** The game can simulate macro events. For instance, if CITES ups the protection level of a species or a new global operation launches (like *Operation Blizzard* was a real multi-country reptile trade crackdown ), then for a few turns certain routes or species become extremely dangerous to deal with. The player must adapt or pause those dealings.

**Endgame and Win/Lose Conditions:**

* **Winning:** If the game has a narrative end, it could be reaching a certain **net worth or reputation** and then successfully “getting out.” Perhaps the win scenario is you accumulate, say, $50 million (like Drug Wars had a victory condition at a certain money ) **and** you survive a final investigative push (like one last mega-raid that you have to escape by the skin of your teeth, maybe via an option to flee the country). The ending might describe you retiring in luxury (but with psychological scars or constantly looking over shoulder).

* Alternatively, there might be no fixed win – it’s about how long you can last and a high score if you eventually get caught. This open-ended approach fits the sandbox style, but having some narrative conclusion could be satisfying.

* **Losing:** Obviously being jailed or killed ends the game. There could also be a bankruptcy/insolvency loss – if you run out of money (can’t pay bribes or debts), your operation collapses and you’re either arrested due to inability to cover tracks or perhaps taken out by creditors/rivals.

**Progression Example:**

*At $50,000 profit, you expand from your home country into a neighboring one – unlocking new species (e.g. Asian songbirds) and new contacts. By $500,000, you’ve got a small network of smugglers and two warehouses; you no longer personally travel each time. At $5 million, you purchase a covert airstrip and a second identity, allowing you to move shipments via private flights – dramatically increasing volume. However, now international agencies have noticed a pattern in seizures tied to your network (heat is at max). You must invest heavily in political influence and maybe eliminate a rival who’s giving information to the police to survive. If you navigate that, you could reach $50 million and attempt to retire or shift into a legitimate business.* At each of these inflection points, new mechanics (hire more staff, private transport, law enforcement special ops) came into play.

In short, progression transforms the gameplay from a scrappy one-person operation to a complex criminal enterprise. It introduces both empowerment (new tools, more money) and heightened threats, keeping the gameplay loop engaging. The multiple axes of progression (wealth, reach, influence) ensure that players feel a sense of growth, while the interconnected dangers ensure the **drama and horror escalate** rather than diminish.

## **Random Events and Encounters**

To simulate the unpredictability of the illegal pet trade, the game features a robust **random event system**. These events can occur during travel, transactions, or as time-based incidents, and they ensure each playthrough is dynamic. Events range from minor flavor text with small effects to major crises that require strategic choices. Below, we outline categories of random events with examples:

**1\. Law Enforcement Encounters:**

* **Customs Inspection:** *“An officer at customs signals you for additional screening.”* This event might trigger when traveling or shipping animals. The player then faces a choice: attempt a bribe, try to bluff with paperwork, or if possible, abandon the shipment and slip away. Outcome could be successful bypass (with cost), confiscation and possible arrest, or escape with loss of goods.

* **Police Raid:** *“Pre-dawn raid\! Authorities storm one of your safehouses.”* This can happen if heat is high. The player might have had a contingency (like an informant warning early). Options might be: fight (if you have armed guards, with risk of casualties and raising heat *further*), flee (lose the animals there, possibly lose a contact who is arrested), or if you invested in hiding spots, maybe some animals are saved. This event can cripple your inventory and finances if unprepared.

* **International Sting Operation:** *“Operation Thunderbolt: Interpol coordinates a simultaneous crackdown.”* Rather than an immediate encounter, this event could impose a global condition for a few turns (e.g. all trades have double chance to be caught, prices spike due to scarcity, and some of your overseas contacts might lie low). It’s more atmospheric, pushing the player to consider pausing operations or carefully bribing during the period. For example, if such an operation is announced in-game news, you might avoid major deals that turn.

**2\. Market and Economic Events:**

* **Surge in Demand:** *“Celebrity posts exotic pet on social media, demand for that species skyrockets.”* This could temporarily increase price for, say, fennec foxes by 50% (social media influence was noted as driving exotic pet popularity). The player can exploit this by selling stock or rushing to acquire that species – but rushing might mean cutting corners, incurring risk.

* **Market Glut:** *“Breeding success floods market with captive-bred reptiles, lowering prices.”* If a species becomes suddenly more available legally or from captive breeders, illegal prices drop. The player holding those animals might take a loss or decide to hold onto them longer (with the associated care costs and risks).

* **Rival Arrested:** *“Rival trafficker busted with huge haul – his supply and customers are now up for grabs.”* This could be beneficial: prices might rise because of less competition, and some of the rival’s contacts might approach you. But also, authorities are on alert from that bust (slightly raising heat generally). The player can decide to expand quickly into the vacuum (opportunity with risk) or cautiously enjoy higher prices.

**3\. Animal Welfare and Logistics Events:**

* **Disease Outbreak:** *“Mysterious illness in your holding facility – animals showing symptoms.”* This is drawn from real cases like ranavirus in turtles or Exotic Newcastle Disease in birds . The player must react: quarantine (stop trading those animals, pay for vet care, reduce spread but possibly miss sales), ignore (continue trading, maybe infect buyers’ stock which could come back to you later, and more of your animals die). If ignored, maybe next event: “Disease traced to animals sold by you – authorities investigating pet traders” (a big heat increase).

* **High Mortality Transit:** *“Transit Tragedy – half your shipment died en route.”* This event simply informs the player that due to some condition (extreme weather, delay, rough handling ), many animals perished. The immediate effect is loss of inventory (and maybe a hit to morale). If this happens often, it might trigger a later event like an employee whistleblower or an investigative reporter sniffing around due to frequent dead animals disposal.

* **Escape\!:** *“During a layover, several monkeys escaped their cages.”* This event might reduce the number of animals (some lost) and possibly cause a scene (if it happens in a public area, could raise suspicion). The player might be given a quick decision: attempt to recapture (risk being seen), or leave them and flee (minimize personal risk but lose them and possibly some rep for failing a delivery).

**4\. Supplier and Buyer Events:**

* **Supplier Trouble:** *“Poaching crackdown at source – your supplier barely escaped arrest.”* Supply from that contact might dry up for a while. They might ask for help (like money or a safehouse). If you assist, you preserve the relationship; if not, you might lose that supplier permanently. This is a narrative way to force diversifying your supply lines.

* **Buyer Issues:** *“Buyer X got raided by police after purchasing from you.”* If a buyer is caught with contraband animals, they might snitch or the trail could lead back to you. This event could either reduce your rep (others see one of your clients got caught) or increase heat if the link is made. The player might get an option: send money to the buyer’s legal defense (to keep them loyal/quiet) or cut ties and hope they don’t talk.

* **Celebrity Request:** *“A famous rockstar secretly contacts you seeking an exotic pet.”* This is a high reward opportunity – they’ll pay triple for a specific rare animal. But fulfilling it might be tricky (short deadline, specific gender/age of animal needed). Also, if something goes wrong (the celeb’s pet is discovered or it dies and makes news), it could cause a huge scandal. Failing the mission could drop your reputation; succeeding yields big money and a prestige bump (but maybe heat too, since celebrities draw eyes).

**5\. Internal and Crime Events:**

* **Employee Betrayal/Whistleblower:** As discussed, if morale is low or a character is disgruntled, an event: *“Your associate was caught and is talking to authorities”* or *“A disgruntled handler leaked photos of your operation to the press”*. The game can simulate the fallout (heat skyrockets, perhaps a raid is imminent). There might be a narrow option to mitigate (if you have a hitman on payroll, an extreme measure could be to silence them before more damage – but that could have its own risks).

* **Bribe Scandal:** *“Corrupt official under investigation – records of bribes uncovered.”* If one of your key bribed contacts gets caught in an anti-corruption probe, they might expose you. In-game, this could mean that your previously safe route suddenly becomes hot, or you lose an influence bonus you were relying on. It might spawn a mission to either help that official escape/cover-up or abandon that route entirely.

* **Rival Sabotage:** *“Truck carrying your shipment was hijacked – suspected rival gang involvement.”* A competitor hits you where it hurts. You lose goods. You might then get an option to retaliate (perhaps with a risk of a gang war event) or to swallow the loss and increase your own security next time.

**Event Resolution and Choices:** Most events will present a short narrative and then either automatically apply an effect or prompt the player with a choice. We should design these choices to leverage the game systems:

* A **safe** option (lower immediate risk but possibly a long-term cost) vs a **risky** option (fix problem now but could blow back later).

* Or choices that pit resources against each other: spend money, sacrifice animals, risk reputation, etc.

**Frequency and Randomization:**

* The game can have a base chance of an event per turn, modified by heat, reputation, and perhaps randomness.

* Some events might be one-time or chapter-based (like the Interpol crackdown might only happen after you reach a certain fame).

* The key is unpredictability: The player shouldn’t be able to predict exactly when a bust or a lucky break will come, which keeps tension high.

**Sample Event and Outcome:**

*“Bust at the Border”* – While transporting a load of snakes by car, you get flagged at a routine checkpoint.

* **Event Text:** *A border police officer has pulled you over. He hears hissing noises from the back of your vehicle. He’s asking you to open the trunk.*

* **Options:**

  1. **Attempt a Bribe (Cost $5,000)** – *You quickly pull out a thick envelope for the officer.* (If successful: *He glances around and pockets it, waving you through.* Heat might still tick up slightly because you had a close call. If failed: *He frowns, refuses the bribe, and calls for backup – you’re arrested\!* Then you face an arrest scenario).

  2. **Distract and Flee** – *You feign compliance then hit the gas, speeding away.* (Outcome: You escape the checkpoint in a chase scene. You might lose some cargo in the escape or damage the vehicle. Heat increases significantly in that region, and future land routes there become riskier. But you avoid immediate capture.)

  3. **Compliance** – *You open the trunk, hoping your concealment is enough.* (Outcome depends on your prep: if you had excellent hiding, maybe the officer finds nothing and apologizes for the inconvenience. If your concealment was poor, he finds the snakes; you’re busted but maybe have a chance to talk your way with a fine or minor charge depending on laws, or use a bribe at that point with lower success chance.)

This example shows how events put the player’s prior investments (in bribe funds, concealment, route choices) to the test and create emergent stories.

Overall, the random event system is the **heartbeat of uncertainty** in the game, ensuring that even the best-laid plans can go awry (or occasionally, unexpected fortune can smile on the player). It also reinforces the educational aspect by often being inspired by real incidents (so players might later recognize “oh, that happened in real life to some smuggler who got caught with turtles in socks” , etc.). The diversity of events – from action-packed busts to quiet market shifts – ensures a comprehensive simulation of the illegal pet trade world.

## **User Interface Considerations**

Even though the game deals with complex systems, the interface will remain **simple, text-based, and user-friendly**, much like classic browser or mobile management games. The UI’s job is to present information clearly and allow the player to navigate their empire and respond to events efficiently. Here are the key UI design considerations and components:

**General Layout:**

* The game can use a **dashboard-style main screen** with important stats always visible at the top or side. For example: **Money**, **Current Location**, **Heat Level**, **Reputation**, and maybe a quick view of **Inventory** (number of animals or capacity used) could be shown in a header.

* Below that, the main view can be context-specific (trading, traveling, event resolution, etc.), likely mostly text and simple buttons or links.

**Navigation and Menus:**

* **Locations/Travel Menu:** If the game allows moving between locations, a menu or map will let the player choose destinations. This can be a list of regions with some info (e.g. “Amazon Basin (Low enforcement, Supplies: Parrots, Monkeys)”, “Europe (High enforcement, Demand: High for birds)”). Selecting a location ends the turn with travel (increasing day count, etc.) similar to moving boroughs in Drug Wars , but can have added risk events during travel.

* **Actions Menu:** From the main screen, key actions should be accessible, likely as buttons:

  * **Buy Animals / Visit Supplier** (if at a location where you have contacts or a market).

  * **Sell Animals / Meet Buyer**.

  * **Manage Inventory** (view what animals you have, possibly redistribute them if you have multiple safehouses).

  * **Bribery/Influence** (a screen to handle paying off officials or viewing current influence levels).

  * **Contacts/Network** (view all known contacts with their status, maybe initiate communications like making an order or inquiry).

  * **Upgrades/Assets** (if applicable, a screen listing infrastructure you can buy or upgrade, like “Expand Warehouse capacity” or “Buy fake permits printer”).

  * **End Turn / Travel** (a button to advance time if you’re done with actions, possibly combined with travel selection).

* These actions can also appear contextually. For instance, when you’re at a supplier’s location, the UI might automatically list the animals available to buy this turn with prices (like a shop interface). When at a destination with buyers, it lists buyers or market prices.

**Text Display and Feedback:**

* **Event Pop-ups:** When a random event triggers, the game should pause other UI and show a narrative text box describing the event and choices. The player then clicks a choice button, and the outcome is then displayed. These event texts should be scrollable if long, with clear **paragraph breaks** for readability (keeping them within a 3-5 sentence chunk before a break, as per good practice). Any consequences (e.g. “You lost 5 animals” or “Heat \+10”) should be highlighted either in the text or via icons.

* **Logs/History:** A panel or screen that logs recent events and actions (so the player can review what happened). For example, “*Day 10: Sold 3 Iguanas in Bangkok for $900. Day 11: Customs Inspection – bribe successful (-$500).*” This helps players track complex outcomes over time.

**Visual Aids:**

* The UI is primarily text, but some simple icons or ASCII art can help:

  * Icons for animal categories (🐍 for reptiles, 🦜 for birds, etc.) next to listings.

  * Icons for status effects: a badge for heat level, a handshake for reputation, a skull for mortality risk, etc. These can quickly convey high-level info.

  * If a map is included, it could be very minimalistic, perhaps just a network of nodes (cities) with lines (routes) – clicking a node moves you there.

**Use of Tables and Lists in UI:** The game can present information in table format where appropriate, similar to those in this document but simplified:

* A table in the **Buy menu** might list available species, quantity, price per unit, total cost, and maybe risk notes.

* A table in **Inventory** shows each animal type you hold, how many, their health condition (if tracked), and est. market value.

* **Contact list**: could be a list (maybe a table with Name, Role, Relationship level, Note).

* These should be implemented in a way the player can scan quickly. For example, sorting by species or by region might be possible.

**Notifications and Warnings:**

* Given the complexity, the UI should warn players of critical things. If they try to travel while over capacity, a warning “You have more animals than you can safely transport\!” could pop up. If heat is extremely high and they initiate a huge deal, maybe a prompt “This could be very dangerous. Proceed?” – not to handhold too much, but to simulate an inner voice or advisor.

* After events or at the start of a turn, if some status changed (like “Your bribe to the port official expired”), a small notification can appear.

* Color coding: Heat level could be green (low), yellow (med), red (high) indicator to draw attention when needed.

**UI Tone and Imagery:**

* The interface theme can be kept somewhat dark/gritty to match tone – perhaps dark backgrounds and stark text, maybe with subtle imagery like watermark silhouettes of animals (though carefully, as real images of suffering animals might be too harrowing to place in UI constantly). The key is readability first: good contrast for text, legible font, etc.

* No excessive gore in UI visuals; the horror comes from text. Maybe use red highlight text for extremely bad outcomes to signal “this is bad”.

**Accessibility:**

* Because it’s text-driven, ensure font can be resized, and important information is textual (not solely conveyed by color or sound).

* If images are used (maybe occasional illustrative image in an event), include alt text or description (which is natural in text format).

* The UI should be functional on both desktop and mobile browsers (so likely a responsive design with mostly vertical scrolling on mobile).

**Example UI Flow (Selling Animals):**

1. Player clicks **Sell** on main menu.

2. They see a **Buyer Selection** screen if multiple buyers are available in current city. For instance:

   * Buyer A: Private Collector (wants exotic birds, high pay, discreet)

   * Buyer B: Lab Assistant (buying monkeys for research, moderate pay, might ask for papers)

   * Open Market: (sell to pet shops via middlemen at market price, low risk, moderate pay)

3. The player selects Buyer A. The UI then shows a list of animals in your inventory that Buyer A is interested in (e.g. all your birds, with a suggested price each). You enter quantities to sell.

4. The interface might show an expected outcome: “Total Price: $X. This buyer prefers healthy, quiet specimens. Risk: Buyer may request proof of origin.”

5. Press confirm, then an event or result appears: If routine, it says “Sold 5 parrots for $5000.” If an event triggers (like buyer asks an awkward question or tries to haggle), an event pop-up happens.

Throughout, **consistent formatting** (headings, lists, etc.) in UI dialogues ensures the information is digestible. For example, in an event choice, each option could be formatted as a bullet or clearly separated line, possibly with outcome hints in parentheses if appropriate.

**Comparing to Drug Wars UI:** Drug Wars was essentially text on a black screen with simple inputs. Here we can be a bit more modern: clickable options rather than requiring typed commands, a bit more guidance (tooltips or info panels explaining what things mean if hovered/clicked). Yet, we maintain the simplicity: it’s not a graphic-heavy simulation game UI like a tycoon game, but more like an interactive story/trading game hybrid.

In conclusion, the UI is designed to make a complex simulation manageable:

* It **organizes data** with tables and lists (so the player can quickly see their situation).

* It **navigates logically** (mirroring the player’s mental model of traveling, buying, selling, etc.).

* It **presents narrative events clearly** without overwhelming the player (short paragraphs, clear choices).

* And importantly, it stays **low-key and efficient**, ensuring the focus remains on the gameplay and story, not on fancy graphics or clutter. This minimalism also serves to not distract from the gravity of the content – a flashy UI might undermine the serious tone.

## **Tone and Narrative Guide**

To maintain the **“honest and horrifying”** vision, all writing in the game follows a specific narrative style. This tone guide outlines how to execute the writing in events, descriptions, and flavor text.

**Narrative Voice & Perspective:**

* The game is written primarily in **second person present tense**, addressing the player as “you.” This pulls the player directly into the scenarios. For example: “*You pry open the crate and recoil at the sight inside…*” This perspective creates immediacy and personal accountability.

* Descriptions are **unflinching and detailed** when it comes to cruelty or consequences. The language is straightforward, almost clinical at times, to mirror reports from real life. This avoids melodrama; the facts themselves carry emotional weight. E.g., “*Inside, five parrots lie motionless, their feathers matted with filth .*” The factual description is horrifying without needing extra adjectives.

* The game does not shy from graphic imagery, but uses it purposefully. Blood, decay, and suffering are described when relevant to drive the point home (like describing animals taped up from mouth to tail, living in excrement ).

* There is **no glamorization of crime**. When you succeed (e.g., make a huge sale), the text might note the money and perhaps the player’s adrenaline, but it will often pair with a dark observation (like “*the cash feels heavy, stained by the death that got you here*” or mention the animal’s condition at sale). This ensures even victories feel morally hollow or tainted.

* **No comedic tone** in events involving animal suffering or serious topics. Any dark humor is very limited and only perhaps in interactions with unsavory characters, but the default is serious. For instance, a corrupt official might make a wry joke (“*These turtles of yours don’t bite, do they?*” he chuckles as he pockets your bribe), but the overall context remains grim.

**Use of Factual Details and Realism:**

* The writing occasionally weaves in real-world facts or parallels to emphasize realism. For example, an event might mention “*Almost a third of the animals never survive journeys like this ,*” directly echoing real statistics to remind the player this is not far-fetched.

* Terms and jargon appropriate to the field are used: e.g. referring to CITES permits, or using law enforcement code names (if an Interpol operation is referenced, maybe a real one like “Operation Thunderstorm” etc. if such exists, or a plausible-sounding one).

* Geographical and cultural flavor is present. If you’re dealing with a poacher in Congo, maybe a mention of the local context (though brief). If in a city, an event might mention the environment (like “Bangkok’s heat and the cacophony of the animal market surrounds you” to set scenes). But these don’t dominate; they are light touch to avoid huge expository text.

**Emotional Undercurrent:**

* While the text is often factual, it also tries to invoke an emotional response in the player. After a cruel event, it might directly address the player’s possible feelings: “*You feel a knot in your stomach as you dump the tiny corpse of the loris into a trash bin.*” Or “*Your heart pounds – whether from fear of capture or the sickening realization of what you’ve done is hard to say.*”

* The game avoids telling the player how to feel explicitly in moral terms (“this is awful”), but it shows things in such a way that the natural human reaction is unease or horror. Essentially, **show, don’t tell** – describe scenes so that players draw the conclusion of “this is horrifying” themselves.

* NPC dialogue (if any) further reinforces tone: For example, a vet you hire might say “*I can treat the surviving animals, but… next time, at least give them water. This is unbearable.*” Such lines voice the moral perspective of an observer within the game world, which might resonate with the player’s own conscience.

**Consistency and Sensitivity:**

* **Respect for subject matter:** Even though the player is the perpetrator, the game does not trivialize animal suffering. Language like referring to animals not as generic units (“goods” or “items”) but as living creatures (even if the character might sometimes coldly say “units”, the narration often breaks that by showing their life). That said, in interfaces they might still be listed as items for gameplay, but narrative events will remind they’re living.

* **Avoiding glorification:** Success is often immediately contrasted with the horror behind it. E.g., “*The deal makes you $20,000 richer. As you count the cash, the distant cries of stressed animals echo in your mind.*” This keeps the player from feeling too triumphant without at least an pang of guilt.

* **Humanizing consequences:** Not only focus on animal suffering, but also on human corruption and downfall. For instance, if one of your hired couriers is caught, maybe a snippet about their fate: “*Miguel, your driver, is led away in handcuffs, his family may never see him free again.*” This shows collateral human damage, enhancing the honest portrayal of the whole criminal enterprise (it ruins human lives too, not just animals).

**Examples of Tone in Writing:**

* *Inventory Description Example:* Instead of just “10 Parrots in inventory,” a hover text or detail might read: “*Grey Parrots – many have plucked chest feathers from stress, eyes dull.*” A subtle but telling detail.

* *Event Description Example:* “*A customs officer cracks open the wooden crate. Inside, he finds nothing but yams. He almost dismisses you – then one of the yams moves. A tiny turtle’s head pokes out from under the pile. Your heart skips.*” – This sets a tense scene, showing how you tried to hide turtles under produce, but nature almost betrayed you. It’s detailed, suspenseful, yet not exaggerated beyond plausibility.

* *Aftermath Example:* “*Night falls as you arrive at the safehouse. You flip on a single bulb hanging from the ceiling, illuminating rows of makeshift cages. Some contain rare lizards blinking at the sudden light; others are heartbreakingly empty, their former occupants lost along the journey. You tell yourself it’s the cost of doing business, but the silence in those cages feels like an accusation.*”

**Length and Pacing of Text:**

* Descriptions and events will be kept reasonably concise per the UI guidelines (no wall of text all at once) – broken into short paragraphs. In interactive sequences, the narrative might come in chunks to keep pace (like a multi-part event: confrontation description, then you choose, then resolution description).

* The game will alternate between strategy planning phases (mostly UI, numbers, lists) and narrative event moments (prose). This balance keeps the player from being emotionally bludgeoned at every single moment – the horror comes in spurts when these events occur, making them more impactful against the backdrop of “manage your empire” tasks.

**Localization and Language:** We assume English primarily. Avoid slang or idioms that break immersion or seem tone-deaf. If portraying characters from various countries, don’t resort to caricature; keep dialogues straightforward, maybe lightly inflected with their perspective (“This is extremely cruel to the animal,” said the Australian wildlife officer, voice shaking – universal sentiment).

By following this tone guide, we ensure that every piece of writing, from a simple status update to a major story event, contributes to the intended atmosphere. The result should be a game that **reads like a dark thriller based on true crimes**, as gripping as it is unsettling, effectively educating about the illegal pet trade through its immersive narrative.

## **Sample Scenarios and Events**

Finally, to tie everything together, here are a few **sample in-game scenarios** demonstrating how different systems interact and how the tone is conveyed. These scenarios illustrate typical situations a player might face, with a brief narrative setup and outcome for each:

### **Scenario 1: The Smuggled Macaws and the Bribed Border Guard**

**Context:** You have acquired 6 Blue-and-yellow Macaws (large parrots) from a South American supplier. They are hidden in vented PVC tubes in your truck, and you’re driving across a remote border to reach an airstrip.

* **Event:** At the border, an officer hears faint squawking. He stops you and asks to inspect the cargo.

* **Player’s Choice & Mechanics:** You decide to attempt a **bribe** (drawing from the bribery system). You offer $1,000 (affordable due to earlier profits).

* **Outcome:** The narrative might say, “*The guard glances at the cash in your hand. After a tense moment, he nods and slips it into his pocket, lifting the barrier.*” You pass safely (evasion success). However, because the birds were stressed, when you arrive at the airstrip, you discover one macaw died from heat and stress during the delay . The tone is mixed: relief at evading capture, grim reality of a lost animal.

* **Game Effects:** \-$1,000 money, \+heat slightly (the stop drew a bit of attention), inventory now 5 macaws (one lost). Morale drops a bit due to seeing the dead macaw. You still make it to market and sell the remaining birds, covering the bribe cost and then some.

### **Scenario 2: Outbreak in the Warehouse**

**Context:** You have a warehouse in a Southeast Asian city where you’ve stockpiled 20 Indian Star Tortoises awaiting buyers. They were sourced from different catchers and kept together.

* **Event:** *“Disease Outbreak”* – Many tortoises become lethargic and start showing lesions. A vet contact identifies it as likely **ranavirus**, a deadly infection, possibly introduced by mixing groups .

* **Player’s Choice:** The game offers options:

  1. **Quarantine and Treat:** Pay $2,000 for vet care, isolate the sick (risk losing some sales and alerting authorities a bit due to buying meds).

  2. **Do Nothing:** Continue as is, hoping to sell quickly before they die (likely more will die and possibly infect others).

* **Outcome if Quarantine:** “*You invest in proper care. Over two weeks, 8 tortoises succumb despite efforts , but the rest recover. Local animal rights groups get rumors of dead tortoises at a warehouse, mildly increasing scrutiny (heat \+5). However, buyers appreciate that the remaining ones are healthy.*” Game effects: money \-$2,000, lost 8 tortoises, heat \+5, but your reputation with buyers or vets might improve (they see you aren’t completely reckless).

* **Outcome if Do Nothing:** “*You decide not to spend a cent. In the next few days, the infection rips through the stock – half the tortoises die painfully . You quietly dispose of the carcasses in a dumpster. A horrid stench lingers, attracting unwanted attention (heat \+15 as a neighbor reports it). The surviving tortoises are sold, but one buyer later complains their tortoise died soon after purchase – hurting your credibility.*” Effects: lost 10 tortoises, smaller profit, heat \+15, reputation \- with that buyer or generally.

This scenario shows the **ethical stress** (watching animals die vs. spending money) and consequences on multiple systems (trade loss, heat, rep, morale).

### **Scenario 3: VIP Client – The Hollywood Star and the Chimpanzee**

**Context:** A famous actor’s agent has discreetly reached out. The client wants an infant chimpanzee as a pet, a highly illegal and unethical request.

* **Event:** This is a **mission-like scenario** triggered by high reputation. You must obtain a baby chimp and deliver it to the actor’s private zoo in another country, within 1 month.

* **Gameplay:** This involves multiple steps – finding a supplier (perhaps persuading a contact in Africa to risk poaching one), then smuggling (a chimp baby is fragile; you might have to sedate and hand-carry it on a first-class flight disguised as a human baby). Bribes will likely be needed for paperwork (false “research animal” permit).

* **Challenges:** A random mid-mission event: “*Airport security demands to see the baby’s passport.*” They noticed something uncanny about “the baby” (perhaps it moved oddly). The player can attempt a last-minute bribe or bluff that it’s a doll for a film shoot. Assume the player bribes heavily and passes.

* **Outcome:** You deliver the chimp. The narrative describes the actor clapping with joy as they take the chained infant primate from you – an unsettling scene of indulgence. You earn $50,000. **Tone:** The text notes “*The chimp clings to your arm, eyes wide and fearful, before it’s pulled away by the celebrity’s staff.*” Even in success, the horror is evident – you’ve condemned this creature to who-knows-what life for money.

* **Consequences:** Huge profit, big reputation boost (word spreads you can get even the rarest pets). But also a spike in heat, because such a high-profile person owning a chimp will eventually leak in tabloids. Indeed, a later event might be “Actor’s illegal pet discovered by authorities – investigation underway,” which could circle back to you.

* **Morale:** Possibly a hit – this was an intelligent animal, and the game might emphasize its cries or the moral event horizon of this act, pushing your conscience meter down significantly.

This scenario touched on **buying, logistics, bribery, relationships** (celebrity client), and the **tone** of cruel indulgence.

### **Scenario 4: Inside Help – A Corrupt Official’s Offer**

**Context:** You’ve been struggling with shipments through a certain port where many get seized. A well-placed customs official contacts you with a proposition.

* **Event:** *“An Unexpected Ally”* – The official says for $20,000 upfront, he will ensure any one shipment of yours passes without inspection. Essentially a high-cost bribe event.

* **Player’s Choice:** Accept the deal for a planned mega-shipment (maybe you want to move a large batch of snakes and turtles in one go), or refuse because it’s too costly or you distrust him.

* **Outcome if Accept:** “*You pay the official. True to his word, your container of wildlife sails through customs untouched – a trove of animals arriving safely . This infuses you with confidence.*” You make a huge profit selling them. However, maybe the official comes back later demanding another payment (establishing an ongoing cost). Also, shipping so many at once leads to a notable incident on the other side: the buyer’s facilities are overwhelmed, and a few animals escape into the local ecosystem, causing environmental issues – a news story breaks, again increasing heat in that area.

* **Outcome if Decline:** “*You don’t bite – something felt off. Indeed, two weeks later that official is arrested in a corruption probe . Had you engaged, your name could have been on his ledgers.*” You avoid a potential trap (or maybe it was genuine but you missed out on easy mode). Now you keep using smaller shipments, slower progress but safer. Perhaps your caution saves you from that probe fallout.

This scenario highlights **strategic decision** (safe small gains vs. big risk/reward) and shows corruption’s double-edged nature, incorporating narrative from our sources (corruption busts).

### **Scenario 5: The Whistleblower Employee**

**Context:** You hired an animal handler to care for creatures in your safehouse. She has been growing increasingly disturbed by the condition of the animals.

* **Event:** *“Crisis of Conscience”* – She confronts you after a particularly cruel shipment arrival: “*I can’t do this anymore… Those baby monkeys were dying\! This is wrong.*” The game indicates she is considering tipping off an animal welfare NGO.

* **Player’s Choice:**

  1. **Pacify/Bribe:** Offer her a large bonus and promise improvements (e.g. better cages, limit the cruelty).

  2. **Threaten/Eliminate:** Intimidate her into silence (or in extreme playthroughs, have her killed – very dark choice).

  3. **Let her leave (Risk):** Allow her to quit peacefully, hoping she stays silent.

* **Outcome if Bribe:** “*She shakily accepts the money. For now, she stays, though she avoids looking you in the eye. You invest in slightly better conditions as promised. She doesn’t report you.*” (Your expenses go up, maybe morale among staff improves, this might tie to an ethical choice benefit too.)

* **Outcome if Threaten:** “*Her eyes fill with fear. She nods and falls silent. The next day, she’s gone – vanished without trace. Perhaps she fled town. But at least she didn’t go public.*” (However, your reputation as a cruel boss spreads in the underworld, ironically maybe earning fear-respect but making future hires harder or more likely to betray if they get a chance).

* **Outcome if Let Leave:** “*She leaves in tears. A week later, a scathing exposé appears on a popular news site – she talked . It details graphic scenes from your operation (though not naming you directly, it’s under investigation). Heat surges. You relocate your remaining animals in haste.*” (Major heat increase, possible immediate raid event triggered.)

This scenario ties **relationships**, **morale**, and **law risk**, encapsulating the game’s core theme: no action is without consequence or moral weight.

---

These sample scenarios demonstrate how the various systems come into play in an integrated manner. They show:

* The **gameplay loop** in action (acquire, smuggle, sell, react to outcomes).

* The interplay of **systems** (bribery aiding logistics, ethics affecting law risk).

* The maintenance of **tone** (each scenario highlights a cruel or dark aspect, described vividly and seriously).

* The use of **choices** and **tables/info** (though written narratively here, in-game they’d be presented via the UI with clear options and results).

By designing numerous events and scenarios like these, the game achieves both a rich simulation and a narrative impact, truly capturing the illicit pet trade in a way that is **engaging, educational, and emotionally powerful**.

# Variables

Here’s a full list of **variables** and **constants** that the game described in your design document would need to employ — divided by system, with brief explanations of each. This list assumes a code-level implementation of the mechanics described (in JavaScript, Python, or similar).

---

## **1\. Global and Core Variables**

| Variable | Type | Description |
| ----- | ----- | ----- |
| day / turn | Integer | Tracks the passage of time (one turn \= one day/week). |
| money | Float | Player’s liquid cash. |
| debt | Float | Optional; starting debt mechanic (like *Drug Wars*). |
| heat | Float (0–100) | Represents law enforcement attention. |
| reputation | Float (0–100) | Player’s standing among criminals and buyers. |
| morale / conscience | Float (0–100) | Player’s psychological stability or stress. |
| location | String | Current location (region or city). |
| inventory | Object / Array | Holds all owned animals and their attributes. |
| contacts | Array | List of suppliers, buyers, and intermediaries. |
| turn\_events | Array | Queue of random or scheduled events per turn. |
| disease\_spread | Float | Background factor controlling likelihood of outbreaks. |
| global\_market | Object | Dynamic market data (prices, demand, supply by species). |
| player\_status | Enum | e.g. ACTIVE, ARRESTED, ON\_THE\_RUN, RETIRED. |
| save\_state | Object | Stores full game state for persistence. |

---

## **2\. Economic and Trading Variables**

| Variable | Type | Description |
| ----- | ----- | ----- |
| animal\_types | Array of Objects | Each entry defines a species with static and dynamic attributes (below). |
| price\_buy | Float | Current purchase price per unit for each animal type. |
| price\_sell | Float | Current sale price (market or buyer-specific). |
| supply\_level | Float | How much of a species is available globally. |
| demand\_level | Float | Market demand in current location. |
| mortality\_rate | Float (0–1) | Probability of death during transport/storage. |
| smuggle\_difficulty | Float (0–1) | Detection chance per transport attempt. |
| care\_cost\_per\_day | Float | Daily upkeep (feed, cage space, etc.). |
| capacity\_used | Integer | How many “slots” current animals occupy. |
| capacity\_max | Integer | Max storage before overcrowding penalties apply. |
| market\_modifier | Float | Price adjustment based on events or player reputation. |
| disease\_risk\_modifier | Float | Increases if mixed species are held together. |
| disease\_active | Boolean | True if disease currently infects stock. |

---

## **3\. Logistics and Transport Variables**

| Variable | Type | Description |
| ----- | ----- | ----- |
| transport\_method | Enum | {AIR\_PASSENGER, AIR\_CARGO, SEA, LAND, MAIL}. |
| transport\_speed | Integer | Turns or days to reach destination. |
| transport\_cost | Float | Bribes, tickets, freight, etc. |
| transport\_capacity | Integer | Max animals per trip. |
| transport\_detection\_risk | Float | Probability of being inspected or busted. |
| transport\_mortality\_modifier | Float | Species mortality adjustment per method. |
| route\_origin | String | Starting country or region. |
| route\_destination | String | Target market region. |
| delay\_risk | Float | Chance of weather, customs, or mechanical delay. |

---

## **4\. Bribery and Corruption Variables**

| Variable | Type | Description |
| ----- | ----- | ----- |
| bribe\_customs | Float | Cost per customs interaction. |
| bribe\_police | Float | Ongoing “protection” payment per region. |
| bribe\_official | Float | One-time payment for high-level favors (e.g. fake permits). |
| bribe\_success\_rate | Float | Probability of successful bribe (mod by reputation \+ amount). |
| corruption\_level\_region | Float (0–100) | Base corruption rating per country (affects cost & success). |
| bribe\_timer | Integer | Turns before a recurring bribe must be renewed. |
| corruption\_decay\_rate | Float | How quickly influence fades without payment. |

---

## **5\. Law Enforcement and Risk Variables**

| Variable | Type | Description |
| ----- | ----- | ----- |
| inspection\_chance | Float | Chance of being stopped per transport. |
| bust\_probability | Float | Combined probability of arrest on detection. |
| investigation\_active | Boolean | True if player is under investigation. |
| informant\_alert | Boolean | Flag if someone in player’s network turned. |
| heat\_gain\_rate | Float | How quickly heat increases per illegal act. |
| heat\_decay\_rate | Float | How fast heat drops when lying low. |
| arrest\_penalty\_money | Float | Fine or confiscation amount. |
| arrest\_penalty\_reputation | Float | Drop in rep after being caught. |
| escape\_chance | Float | If busted, probability of successful bribe or flight. |
| law\_enforcement\_efficiency | Float | Regional constant controlling detection effectiveness. |

---

## **6\. Relationship Variables (Contacts System)**

| Variable | Type | Description |
| ----- | ----- | ----- |
| contact\_name | String | Identifier for supplier, buyer, or fixer. |
| contact\_role | Enum | {SUPPLIER, BUYER, FIXER, VET, SMUGGLER, OFFICIAL}. |
| contact\_relationship | Float (0–100) | Current trust or loyalty value. |
| contact\_reliability | Float (0–1) | Likelihood they’ll keep a deal. |
| contact\_loyalty\_threshold | Float | Level below which they might betray. |
| contact\_trait\_flags | Array | Traits like COMPASSIONATE, GREEDY, COWARDLY. |
| contact\_alive | Boolean | Tracks if NPC dies or flees (some events can remove them). |
| contact\_region | String | Which territory they operate in. |

---

## **7\. Event and Random Encounter Variables**

| Variable | Type | Description |
| ----- | ----- | ----- |
| event\_id | String | Unique identifier for triggered event. |
| event\_type | Enum | {LAW, MARKET, LOGISTICS, RELATIONSHIP, ETHICAL, DISEASE}. |
| event\_trigger\_chance | Float | Likelihood per turn. |
| event\_condition | Function | Conditional trigger (heat \> 70, etc.). |
| event\_outcome | Object | Stores results (money ±, heat ±, morale ±, etc.). |
| event\_duration | Integer | How many turns the event affects systems. |
| event\_text | String | Narrative text displayed. |

---

## **8\. Ethical / Psychological Variables**

| Variable | Type | Description |
| ----- | ----- | ----- |
| morale\_current | Float | Player’s current mental state. |
| morale\_max | Float | Upper bound for normalization. |
| morale\_drop\_event | Float | Drop from traumatic event. |
| substance\_use | Boolean | Whether player is using coping mechanisms. |
| substance\_dependency\_level | Float | Adds risk of impairment or cost. |
| ethical\_choice\_weight | Float | Multiplier determining how choices affect morale. |
| stress\_recovery\_rate | Float | Morale regained per turn while inactive. |

---

## **9\. Progression and Upgrade Variables**

| Variable | Type | Description |
| ----- | ----- | ----- |
| net\_worth | Float | Total assets (cash \+ inventory \+ property). |
| territories\_unlocked | Integer | Count of accessible markets. |
| warehouse\_capacity | Integer | Max animals storable. |
| vehicle\_level | Integer | Affects transport capacity and risk. |
| safehouse\_count | Integer | Number of hideouts (reduces arrest risk). |
| front\_businesses | Array | Laundering or cover businesses. |
| upgrade\_costs | Object | Defines price per upgrade level. |
| upgrade\_effects | Object | How each upgrade changes variables (e.g., \-10% detection). |
| influence\_points | Float | Political reach (reduces enforcement globally). |

---

## **10\. Constants and Tunables**

| Constant | Type | Description |
| ----- | ----- | ----- |
| HEAT\_MAX \= 100 | Integer | Cap for heat meter. |
| REPUTATION\_MAX \= 100 | Integer | Cap for underworld rep. |
| MORALE\_MIN \= 0 | Integer | Lower bound for breakdown. |
| MORALE\_MAX \= 100 | Integer | Upper bound for sanity. |
| BASE\_EVENT\_CHANCE \= 0.15 | Float | Probability of event each turn. |
| BASE\_BRIBE\_SUCCESS \= 0.75 | Float | Default success rate before modifiers. |
| HEAT\_DECAY\_RATE\_DEFAULT \= 0.02 | Float | Daily heat drop while idle. |
| MORTALITY\_BASE \= 0.3 | Float | Default mortality for smuggled animals. |
| MARKET\_VOLATILITY \= 0.2 | Float | Controls random price swings. |
| DAYS\_PER\_TURN \= 1 | Integer | Time unit. |
| MAX\_CONTACTS \= 30 | Integer | Soft limit for network management. |

---

## **11\. UI and State Tracking Variables**

| Variable | Type | Description |
| ----- | ----- | ----- |
| ui\_screen | Enum | Current interface mode (e.g. MARKET, EVENT, LOGISTICS). |
| message\_log | Array | Stores recent text events for review. |
| notifications | Queue | Holds transient alerts to display. |
| save\_slot | Integer | For multiple saved games. |
| autosave\_interval | Integer | Turns between autosaves. |

---

## **12\. Derived Variables (computed dynamically)**

These are not stored directly but recalculated each turn or on demand:

| Variable | Formula / Dependency | Description |
| ----- | ----- | ----- |
| profit\_per\_species | (sell\_price \- buy\_price \- transport\_cost \- bribes) \* qty | Used for trade decisions. |
| heat\_increase\_total | base \+ (shipment\_size \* risk\_factor) \- (bribe\_effect) | Determines law attention. |
| survival\_rate\_total | (1 \- mortality\_rate) \* (1 \- transport\_modifier) | Expected surviving animals. |
| effective\_reputation | reputation \- (heat / 2\) | Adjusted reputation when law pressure is high. |
| morale\_decay\_total | event\_stress \* ethical\_choice\_weight | How much conscience drops after bad acts. |

---

This covers every quantitative element you’d need to code or balance the simulation.

Would you like me to follow up with **system equations and update rules** (i.e., how these variables interact per turn), or keep this as a static reference list?

