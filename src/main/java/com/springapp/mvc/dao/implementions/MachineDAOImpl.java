package com.springapp.mvc.dao.implementions;

import com.springapp.mvc.dao.interfaces.MachineDAO;
import com.springapp.mvc.domain.Machine;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MachineDAOImpl implements MachineDAO {
    @Autowired
    private SessionFactory sessionFactory;

    @SuppressWarnings("unchecked")
    public List<Machine> listMachine() {
        return sessionFactory.getCurrentSession().createQuery("from Machine").list();
    }

    @SuppressWarnings("unchecked")
    public Machine getMachine(String productId) {
        Query query = sessionFactory.getCurrentSession().createQuery("from Machine where productId='" + productId + "'");
        return (Machine) query.uniqueResult();
    }

    @SuppressWarnings("unchecked")
    public void addMachine(Machine machine) {
        sessionFactory.getCurrentSession().saveOrUpdate(machine);
    }

    @SuppressWarnings("unchecked")
    public void removeMachine(String productId) {
        Machine machine = (Machine) sessionFactory.getCurrentSession().load(Machine.class, productId);
        if (null != machine) {
            sessionFactory.getCurrentSession().delete(machine);
        }
    }

    @SuppressWarnings("unchecked")
    public List<Machine> listFiltered(String[] brandArr, int[] yearRangeArr, int[] priceRangeArr,
                                      String[] locationArr, String[] cncArr, int[] xMotionRangeArr, int[] yMotionRangeArr,
                                      int[] zMotionRangeArr, int[] xTableRangeArr, int[] yTableRangeArr) {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Machine.class);
        if (brandArr != null) {
            criteria.add(Restrictions.in("brand", brandArr));
        }
        if (yearRangeArr != null) {
            criteria.add(Restrictions.between("productionYear", yearRangeArr[0], yearRangeArr[1]));
        }
        if (priceRangeArr != null) {
            criteria.add(Restrictions.between("price", priceRangeArr[0], priceRangeArr[1]));
        }
        if (locationArr != null) {
            criteria.add(Restrictions.in("machineLocationEn", locationArr));
        }
        if (cncArr != null) {
            criteria.add(Restrictions.in("systemCNC", cncArr));
        }
        if (xMotionRangeArr != null) {
            criteria.add(Restrictions.between("xMotion", xMotionRangeArr[0], xMotionRangeArr[1]));
        }
        if (yMotionRangeArr != null) {
            criteria.add(Restrictions.between("yMotion", yMotionRangeArr[0], yMotionRangeArr[1]));
        }
        if (zMotionRangeArr != null) {
            criteria.add(Restrictions.between("zMotion", zMotionRangeArr[0], zMotionRangeArr[1]));
        }
        if (xTableRangeArr != null) {
            criteria.add(Restrictions.between("xTableSize", xTableRangeArr[0], xTableRangeArr[1]));
        }
        if (yTableRangeArr != null) {
            criteria.add(Restrictions.between("yTableSize", yTableRangeArr[0], yTableRangeArr[1]));
        }
        return criteria.list();
    }

    @SuppressWarnings("unchecked")
    public void editMachine(String productId, String machineTypeEn, String model, String brand, String producingCountryEn,
                            String systemCNC, String fullSystemCNC, String productionYear, String machineLocationEn,
                            String machineConditionEn, String axisCount, String xMotion, String yMotion, String zMotion,
                            String xTableSize, String yTableSize, String tableLoad, String spindleTaper, String spindleRotationFreq,
                            String spindlePower, String toolCount, String maxToolDiameter, String maxToolLength,
                            String maxToolWeight, String toolReplacementTime, String chipReplacementTime,
                            String positionRepositionPrecision, String spindleRuntime, String machineLaunching, String price,
                            String   isSold, String descriptionEn, String photo1, String photo2, String photo3, String photo4,
                            String photo5, String video1, String video2, String video3) {
        sessionFactory.getCurrentSession().createQuery(
                "update Machine set machineTypeEn='" + machineTypeEn + "', model='" + model + "', brand='" + brand +
                        "', producingCountryEn='" + producingCountryEn + "', " + "systemCNC='" + systemCNC + "', fullSystemCNC='" +
                        fullSystemCNC + "', productionYear='" + productionYear + "', machineLocationEn='" + machineLocationEn +
                        "', machineConditionEn='" + machineConditionEn + "', axisCount='" + axisCount + "', xMotion='" + xMotion +
                        "', yMotion='" + yMotion + "', zMotion='" + zMotion + "', " + "xTableSize='" + xTableSize +
                        "', yTableSize='" + yTableSize + "', tableLoad='" + tableLoad + "', spindleTaper='" + spindleTaper +
                        "', spindleRotationFreq='" + spindleRotationFreq + "', spindlePower='" + spindlePower + "', toolCount='" +
                        toolCount + "', maxToolDiameter='" + maxToolDiameter + "', " + "maxToolLength='" + maxToolLength +
                        "', maxToolWeight='" + maxToolWeight + "', toolReplacementTime='" + toolReplacementTime +
                        "', chipReplacementTime='" + chipReplacementTime + "', positionRepositionPrecision='" +
                        positionRepositionPrecision + "', spindleRuntime='" + spindleRuntime + "', " + "machineLaunching='" +
                        machineLaunching + "', price='" + price + "', isSold='" + isSold + "', descriptionEn='" + descriptionEn +
                        "', photo1='" + photo1 + "', photo2='" + photo2 + "', photo3='" + photo3 + "', photo4='" + photo4 +
                        "', photo5='" + photo5 + "', video1='" + video1 + "', video2='" + video2 + "', video3='" + video3 +
                        "' where productId='" + productId + "'"
        ).executeUpdate();
    }
}