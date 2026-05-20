.class public abstract Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy$Stub;
.super Landroid/os/Binder;
.source "IMiuiSystemUiProxy.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_exitSplitScreen:I = 0x2

.field static final TRANSACTION_getMiddleSplitScreenSecondaryBounds:I = 0x3

.field static final TRANSACTION_onAnimBackToStatusBarEnd:I = 0x3c

.field static final TRANSACTION_onAnimBackToStatusBarStart:I = 0x3b

.field static final TRANSACTION_onAssistantGestureCompletion:I = 0x5

.field static final TRANSACTION_onContinueStartActivityAnim:I = 0x3a

.field static final TRANSACTION_onDockIndicatorVisibilityChanged:I = 0x6

.field static final TRANSACTION_onFocusNotifyAnimEnd:I = 0x38

.field static final TRANSACTION_onFocusNotifyAnimStart:I = 0x37

.field static final TRANSACTION_onGestureLineProgress:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.systemui.shared.recents.IMiuiSystemUiProxy"

    .line 63
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.systemui.shared.recents.IMiuiSystemUiProxy"

    .line 74
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 75
    instance-of v1, v0, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    if-eqz v1, :cond_1

    .line 76
    check-cast v0, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    return-object v0

    .line 78
    :cond_1
    new-instance v0, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.android.systemui.shared.recents.IMiuiSystemUiProxy"

    if-lt p1, v0, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 88
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_9

    const/4 v1, 0x2

    if-eq p1, v1, :cond_8

    const/4 v1, 0x3

    if-eq p1, v1, :cond_7

    const/4 v1, 0x4

    if-eq p1, v1, :cond_6

    const/4 v1, 0x5

    if-eq p1, v1, :cond_5

    const/4 v1, 0x6

    if-eq p1, v1, :cond_3

    const/16 v1, 0x37

    if-eq p1, v1, :cond_2

    const/16 v1, 0x38

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 166
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 160
    :pswitch_0
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;->onAnimBackToStatusBarEnd()V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 154
    :pswitch_1
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;->onAnimBackToStatusBarStart()V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 148
    :pswitch_2
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;->onContinueStartActivityAnim()V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 142
    :cond_1
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;->onFocusNotifyAnimEnd()V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 136
    :cond_2
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;->onFocusNotifyAnimStart()V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 130
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    move p1, v0

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 131
    :goto_0
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;->onDockIndicatorVisibilityChanged(Z)V

    goto :goto_1

    .line 123
    :cond_5
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;->onAssistantGestureCompletion()V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 116
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 117
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;->onGestureLineProgress(F)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 108
    :cond_7
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;->getMiddleSplitScreenSecondaryBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-static {p3, p0, v0}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_1

    .line 102
    :cond_8
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;->exitSplitScreen()V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_1
    return v0

    .line 94
    :cond_9
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
