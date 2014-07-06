// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.android.internal.telephony;

import android.content.Context;
import android.os.Parcel;
import com.android.internal.telephony.uicc.IccCardApplicationStatus;
import com.android.internal.telephony.uicc.IccCardStatus;

// Referenced classes of package com.android.internal.telephony:
//            RIL, CommandsInterface

public class NubiaUiccRIL extends RIL
    implements CommandsInterface
{

    protected int mPinState;

    public NubiaUiccRIL(Context context, int i, int j)
    {
        super(context, i, j);
    }

    protected Object responseIccCardStatus(Parcel parcel)
    {
        IccCardStatus icccardstatus = new IccCardStatus();
        icccardstatus.setCardState(parcel.readInt());
        icccardstatus.setUniversalPinState(parcel.readInt());
        icccardstatus.mGsmUmtsSubscriptionAppIndex = parcel.readInt();
        icccardstatus.mCdmaSubscriptionAppIndex = parcel.readInt();
        icccardstatus.mImsSubscriptionAppIndex = parcel.readInt();
        int i = parcel.readInt();
        if (i > 8)
        {
            i = 8;
        }
        icccardstatus.mApplications = new IccCardApplicationStatus[i];
        for (int j = 0; j < i; j++)
        {
            IccCardApplicationStatus icccardapplicationstatus = new IccCardApplicationStatus();
            icccardapplicationstatus.app_type = icccardapplicationstatus.AppTypeFromRILInt(parcel.readInt());
            icccardapplicationstatus.app_state = icccardapplicationstatus.AppStateFromRILInt(parcel.readInt());
            icccardapplicationstatus.perso_substate = icccardapplicationstatus.PersoSubstateFromRILInt(parcel.readInt());
            icccardapplicationstatus.aid = parcel.readString();
            icccardapplicationstatus.app_label = parcel.readString();
            icccardapplicationstatus.pin1_replaced = parcel.readInt();
            icccardapplicationstatus.pin1 = icccardapplicationstatus.PinStateFromRILInt(parcel.readInt());
            icccardapplicationstatus.pin2 = icccardapplicationstatus.PinStateFromRILInt(parcel.readInt());
            icccardstatus.mApplications[j] = icccardapplicationstatus;
        }

        parcel.readInt();
        parcel.readInt();
        return icccardstatus;
    }
}
