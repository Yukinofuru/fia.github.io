/* 未確定数値の試作用設定。本編設定の確定値として扱わない。 */
window.FiaDailyConfig = {
    version: 2,
    // 作者確認済みの仮日程。新たな急患日は追加しない。
    emergencyDays: [12, 18],
    routine: { basePatients: 3, extraPatients: 3, teachingGain: 1, maxTeachingBonus: 6 },
    coopGrowth: {
        airan: { parameter: 'phi', label: 'PHI', amount: 1 },
        ito: { parameter: 'luc', label: 'LUC', amount: 1 },
        akehiru: { parameter: 'kno', label: 'KNO', amount: 1 },
        setsu: { parameter: 'spi', label: 'SPI', amount: 1 },
        momona: { parameter: 'phi', label: 'PHI', amount: 1 },
        tota: { parameter: 'phi', label: 'PHI', amount: 1 },
        ayase: { parameter: 'kno', label: 'KNO', amount: 1 }
    }
};
