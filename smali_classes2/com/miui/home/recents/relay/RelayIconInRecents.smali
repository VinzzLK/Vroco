.class public Lcom/miui/home/recents/relay/RelayIconInRecents;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "RelayIconInRecents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/relay/RelayIconInRecents$TransferCallback;,
        Lcom/miui/home/recents/relay/RelayIconInRecents$AnimRunnable;
    }
.end annotation


# static fields
.field private static mCurrentRelayDeviceType:I

.field private static mCurrentRelayPackage:Ljava/lang/String;


# instance fields
.field private handoffTaskListener:Lcom/xiaomi/dist/handoff/system/callback/ActiveLocalHandoffTaskListener;

.field private mAnimRunnable:Lcom/miui/home/recents/relay/RelayIconInRecents$AnimRunnable;

.field private volatile mCurrentRelayTaskId:I

.field private final mDefConfig:Lmiuix/animation/base/AnimConfig;

.field private mHandoffConsole:Lcom/xiaomi/dist/handoff/system/HandoffConsole;

.field private mIsShowRelayIcon:Z

.field private final mMainExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

.field private mRelayAppInfo:Landroid/widget/TextView;

.field private mRelayDeviceInfo:Landroid/widget/TextView;

.field private mRelayIcon:Landroid/widget/ImageView;

.field mRelayIconAnimStateHide:Lmiuix/animation/controller/AnimState;

.field mRelayIconAnimStateShow:Lmiuix/animation/controller/AnimState;

.field private mRelayIconCornerLabelView:Landroid/widget/ImageView;

.field private mTransferCallback:Lcom/miui/home/recents/relay/RelayIconInRecents$TransferCallback;


# direct methods
.method public static synthetic $r8$lambda$-Zu2fLF9cZQ2jlfs0JjBEGiUrMg(Lcom/miui/home/recents/relay/RelayIconInRecents;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/relay/RelayIconInRecents;->lambda$onIconHide$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3j_wbkhe6P4izLCJ-Nz-ECEwGdo(Lcom/miui/home/recents/relay/RelayIconInRecents;[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/relay/RelayIconInRecents;->lambda$new$0([Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9IyCe8H1qBXqCYJNmUZoax8FMEc(Lcom/miui/home/recents/relay/RelayIconInRecents;Lcom/xiaomi/dist/handoff/AppMeta;Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/recents/relay/RelayIconInRecents;->lambda$handleLocalHandoffTasks$1(Lcom/xiaomi/dist/handoff/AppMeta;Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CB-v32Tb2_fjTjQc3lBsZxup8dQ(Lcom/miui/home/recents/relay/RelayIconInRecents;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/relay/RelayIconInRecents;->lambda$registerRelayIconCallback$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$zwHB3XbJHYJrGiljViOcJeorWr4(Lcom/miui/home/recents/relay/RelayIconInRecents;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/relay/RelayIconInRecents;->lambda$unRegisterRelayIconCallback$4()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 151
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mIsShowRelayIcon:Z

    const/4 p2, -0x1

    .line 63
    iput p2, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mCurrentRelayTaskId:I

    .line 66
    new-instance p2, Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-direct {p2}, Lcom/miui/home/launcher/MainThreadExecutor;-><init>()V

    iput-object p2, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mMainExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

    .line 71
    new-instance p2, Lcom/miui/home/recents/relay/RelayIconInRecents$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/relay/RelayIconInRecents$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/relay/RelayIconInRecents;)V

    iput-object p2, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->handoffTaskListener:Lcom/xiaomi/dist/handoff/system/callback/ActiveLocalHandoffTaskListener;

    .line 139
    new-instance p2, Lmiuix/animation/controller/AnimState;

    const-string v0, "show"

    invoke-direct {p2, v0}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mRelayIconAnimStateShow:Lmiuix/animation/controller/AnimState;

    .line 140
    new-instance p2, Lmiuix/animation/controller/AnimState;

    const-string v1, "hide"

    invoke-direct {p2, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mRelayIconAnimStateHide:Lmiuix/animation/controller/AnimState;

    .line 142
    new-instance p2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    new-instance v1, Lcom/miui/home/recents/relay/RelayIconInRecents$1;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/relay/RelayIconInRecents$1;-><init>(Lcom/miui/home/recents/relay/RelayIconInRecents;)V

    aput-object v1, v0, p1

    invoke-virtual {p2, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mDefConfig:Lmiuix/animation/base/AnimConfig;

    .line 152
    invoke-static {}, Lcom/miui/home/recents/relay/HandoffConsoleHelper;->getInstance()Lcom/miui/home/recents/relay/HandoffConsoleHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/relay/HandoffConsoleHelper;->getHandoffConsole()Lcom/xiaomi/dist/handoff/system/HandoffConsole;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mHandoffConsole:Lcom/xiaomi/dist/handoff/system/HandoffConsole;

    const/4 p1, 0x0

    .line 153
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/relay/RelayIconInRecents;)Lmiuix/animation/base/AnimConfig;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mDefConfig:Lmiuix/animation/base/AnimConfig;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/home/recents/relay/RelayIconInRecents;Lcom/miui/home/recents/relay/RelayIconInRecents$AnimRunnable;)Lcom/miui/home/recents/relay/RelayIconInRecents$AnimRunnable;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mAnimRunnable:Lcom/miui/home/recents/relay/RelayIconInRecents$AnimRunnable;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mCurrentRelayPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 52
    sget v0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mCurrentRelayDeviceType:I

    return v0
.end method

.method private handleLocalHandoffTasks([Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V
    .locals 5

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLocalHandoffTaskUpdate task size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    array-length v2, p1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RelayIconInRecents"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 77
    array-length v0, p1

    if-lez v0, :cond_3

    aget-object v0, p1, v1

    if-eqz v0, :cond_3

    aget-object v0, p1, v1

    invoke-virtual {v0}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->getToDevice()Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 80
    :cond_1
    aget-object p1, p1, v1

    .line 81
    invoke-virtual {p1}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->getAppMeta()Lcom/xiaomi/dist/handoff/AppMeta;

    move-result-object v0

    .line 84
    :try_start_0
    invoke-virtual {v0}, Lcom/xiaomi/dist/handoff/AppMeta;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 85
    invoke-virtual {v0}, Lcom/xiaomi/dist/handoff/AppMeta;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .line 87
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    .line 88
    invoke-virtual {v0}, Lcom/xiaomi/dist/handoff/AppMeta;->getIconUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 87
    invoke-static {v1, v3}, Lcom/miui/home/launcher/common/Utilities;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 91
    :goto_1
    iget-object v3, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mMainExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {v3}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/miui/home/recents/relay/RelayIconInRecents$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v0, p1, v1}, Lcom/miui/home/recents/relay/RelayIconInRecents$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/recents/relay/RelayIconInRecents;Lcom/xiaomi/dist/handoff/AppMeta;Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const-string v0, "getAppMeta error"

    .line 106
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "FeatureTask exception"

    .line 107
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/relay/RelayIconInRecents;->onIconHide(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    :goto_2
    const-string p1, "localHandoffTasks or deviceInfo empty"

    .line 78
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/relay/RelayIconInRecents;->onIconHide(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private handleRelayData(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 114
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "in multiWindow"

    .line 115
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/relay/RelayIconInRecents;->onIconHide(Ljava/lang/String;)V

    return-void

    .line 118
    :cond_0
    sput p5, Lcom/miui/home/recents/relay/RelayIconInRecents;->mCurrentRelayDeviceType:I

    .line 119
    sput-object p1, Lcom/miui/home/recents/relay/RelayIconInRecents;->mCurrentRelayPackage:Ljava/lang/String;

    .line 120
    iget-object p1, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mRelayIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 122
    sget-object p1, Lcom/xiaomi/dist/common/DeviceType;->PC:Lcom/xiaomi/dist/common/DeviceType;

    invoke-virtual {p1}, Lcom/xiaomi/dist/common/DeviceType;->asIntType()I

    move-result p1

    const/4 p2, 0x0

    if-ne p5, p1, :cond_1

    const p1, 0x7f0802c2

    goto :goto_0

    .line 124
    :cond_1
    sget-object p1, Lcom/xiaomi/dist/common/DeviceType;->PAD:Lcom/xiaomi/dist/common/DeviceType;

    invoke-virtual {p1}, Lcom/xiaomi/dist/common/DeviceType;->asIntType()I

    move-result p1

    if-ne p5, p1, :cond_2

    const p1, 0x7f0802c1

    goto :goto_0

    .line 126
    :cond_2
    sget-object p1, Lcom/xiaomi/dist/common/DeviceType;->PHONE:Lcom/xiaomi/dist/common/DeviceType;

    invoke-virtual {p1}, Lcom/xiaomi/dist/common/DeviceType;->asIntType()I

    move-result p1

    if-ne p5, p1, :cond_3

    const p1, 0x7f0802c3

    goto :goto_0

    :cond_3
    move p1, p2

    .line 129
    :goto_0
    iget-object p5, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mRelayIconCornerLabelView:Landroid/widget/ImageView;

    invoke-virtual {p5, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    iget-object p1, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mRelayDeviceInfo:Landroid/widget/TextView;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p5

    const v0, 0x7f10042b

    invoke-virtual {p5, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p4, v1, p2

    invoke-static {p5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 132
    iget-object p1, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mRelayAppInfo:Landroid/widget/TextView;

    invoke-virtual {p1, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 134
    :cond_4
    iget-object p1, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mRelayAppInfo:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :goto_1
    invoke-direct {p0, v0}, Lcom/miui/home/recents/relay/RelayIconInRecents;->setShowRelayIcon(Z)V

    return-void
.end method

.method private hideIcon(Ljava/lang/String;)V
    .locals 2

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIconHide."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RelayIconInRecents"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 218
    sput-object p1, Lcom/miui/home/recents/relay/RelayIconInRecents;->mCurrentRelayPackage:Ljava/lang/String;

    const/4 p1, -0x1

    .line 219
    sput p1, Lcom/miui/home/recents/relay/RelayIconInRecents;->mCurrentRelayDeviceType:I

    .line 220
    iput p1, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mCurrentRelayTaskId:I

    const/4 p1, 0x0

    .line 221
    invoke-direct {p0, p1}, Lcom/miui/home/recents/relay/RelayIconInRecents;->setShowRelayIcon(Z)V

    return-void
.end method

.method private synthetic lambda$handleLocalHandoffTasks$1(Lcom/xiaomi/dist/handoff/AppMeta;Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;Landroid/graphics/Bitmap;)V
    .locals 9

    const-string v0, "RelayIconInRecents"

    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p2}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->getToDevice()Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {p2}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->getHandoffTaskId()I

    move-result v1

    iput v1, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mCurrentRelayTaskId:I

    .line 94
    invoke-virtual {p1}, Lcom/xiaomi/dist/handoff/AppMeta;->getAndroidPackageName()Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-virtual {p2}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->getDescription()Ljava/lang/String;

    move-result-object v5

    .line 96
    invoke-virtual {p2}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->getToDevice()Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    .line 97
    invoke-virtual {p2}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->getToDevice()Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;->getDeviceType()I

    move-result v7

    .line 98
    invoke-virtual {p1}, Lcom/xiaomi/dist/handoff/AppMeta;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    move-object v4, p3

    .line 94
    invoke-direct/range {v2 .. v8}, Lcom/miui/home/recents/relay/RelayIconInRecents;->handleRelayData(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, "onIconShow."

    .line 99
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "getAppMeta or device error,null"

    .line 101
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "getAppMeta or device error"

    .line 102
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/relay/RelayIconInRecents;->onIconHide(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0([Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/miui/home/recents/relay/RelayIconInRecents;->handleLocalHandoffTasks([Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V

    return-void
.end method

.method private synthetic lambda$onIconHide$2(Ljava/lang/String;)V
    .locals 0

    .line 212
    invoke-direct {p0, p1}, Lcom/miui/home/recents/relay/RelayIconInRecents;->hideIcon(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$registerRelayIconCallback$3()V
    .locals 5

    const-string v0, "RelayIconInRecents"

    :try_start_0
    const-string v1, "registerRelayIconCallback: "

    .line 251
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v1, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mHandoffConsole:Lcom/xiaomi/dist/handoff/system/HandoffConsole;

    iget-object v2, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->handoffTaskListener:Lcom/xiaomi/dist/handoff/system/callback/ActiveLocalHandoffTaskListener;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/home/launcher/util/UiThreadHelper;->getHandler(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/dist/handoff/system/HandoffConsole;->registerActiveLocalHandoffTaskListener(Lcom/xiaomi/dist/handoff/system/callback/ActiveLocalHandoffTaskListener;Landroid/os/Handler;)V

    .line 253
    iget-object v1, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mHandoffConsole:Lcom/xiaomi/dist/handoff/system/HandoffConsole;

    invoke-virtual {v1}, Lcom/xiaomi/dist/handoff/system/HandoffConsole;->queryActiveLocalHandoffTask()Ljava/util/concurrent/Future;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/dist/common/ResultDescriptor;

    if-eqz v1, :cond_0

    const-string v2, "queryActiveLocalHandoffTask: "

    .line 255
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-interface {v1}, Lcom/xiaomi/dist/common/ResultDescriptor;->data()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    invoke-direct {p0, v1}, Lcom/miui/home/recents/relay/RelayIconInRecents;->handleLocalHandoffTasks([Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "registerRelayIconCallback e : "

    .line 259
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$unRegisterRelayIconCallback$4()V
    .locals 2

    :try_start_0
    const-string v0, "RelayIconInRecents"

    const-string v1, "unRegisterRelayIconCallback"

    .line 268
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mHandoffConsole:Lcom/xiaomi/dist/handoff/system/HandoffConsole;

    iget-object p0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->handoffTaskListener:Lcom/xiaomi/dist/handoff/system/callback/ActiveLocalHandoffTaskListener;

    invoke-virtual {v0, p0}, Lcom/xiaomi/dist/handoff/system/HandoffConsole;->unregisterLocalHandoffTaskListener(Lcom/xiaomi/dist/handoff/system/callback/ActiveLocalHandoffTaskListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 271
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setShowRelayIcon(Z)V
    .locals 2

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShowRelayIcon: show "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RelayIconInRecents"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iput-boolean p1, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mIsShowRelayIcon:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 181
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mAnimRunnable:Lcom/miui/home/recents/relay/RelayIconInRecents$AnimRunnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 184
    new-instance v0, Lcom/miui/home/recents/relay/RelayIconInRecents$AnimRunnable;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/recents/relay/RelayIconInRecents$AnimRunnable;-><init>(Lcom/miui/home/recents/relay/RelayIconInRecents;Z)V

    iput-object v0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mAnimRunnable:Lcom/miui/home/recents/relay/RelayIconInRecents$AnimRunnable;

    .line 185
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public isShowRelayIcon()Z
    .locals 0

    .line 293
    iget-boolean p0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mIsShowRelayIcon:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 226
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 227
    sget-boolean v0, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportRelayInRecents:Z

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/miui/home/recents/relay/RelayIconInRecents;->registerRelayIconCallback()V

    .line 229
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 237
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 238
    sget-boolean v0, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportRelayInRecents:Z

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/miui/home/recents/relay/RelayIconInRecents;->unRegisterRelayIconCallback()V

    .line 240
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mAnimRunnable:Lcom/miui/home/recents/relay/RelayIconInRecents$AnimRunnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 244
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 158
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f0a02ff

    .line 159
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mRelayIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a02fd

    .line 160
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mRelayAppInfo:Landroid/widget/TextView;

    const v0, 0x7f0a02fe

    .line 161
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mRelayDeviceInfo:Landroid/widget/TextView;

    const v0, 0x7f0a0114

    .line 162
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mRelayIconCornerLabelView:Landroid/widget/ImageView;

    return-void
.end method

.method public onIconHide(Ljava/lang/String;)V
    .locals 2

    .line 209
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 210
    invoke-direct {p0, p1}, Lcom/miui/home/recents/relay/RelayIconInRecents;->hideIcon(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mMainExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/relay/RelayIconInRecents$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/relay/RelayIconInRecents$$ExternalSyntheticLambda4;-><init>(Lcom/miui/home/recents/relay/RelayIconInRecents;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageRemoveMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 278
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/PackageRemoveMessage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mCurrentRelayPackage:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "package removed"

    .line 279
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/relay/RelayIconInRecents;->onIconHide(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public performIconClick()Z
    .locals 2

    .line 167
    sget-object v0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mCurrentRelayPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mTransferCallback:Lcom/miui/home/recents/relay/RelayIconInRecents$TransferCallback;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/miui/home/recents/relay/RelayIconInRecents$TransferCallback;

    invoke-direct {v0}, Lcom/miui/home/recents/relay/RelayIconInRecents$TransferCallback;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mTransferCallback:Lcom/miui/home/recents/relay/RelayIconInRecents$TransferCallback;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mHandoffConsole:Lcom/xiaomi/dist/handoff/system/HandoffConsole;

    iget v1, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mCurrentRelayTaskId:I

    iget-object p0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mTransferCallback:Lcom/miui/home/recents/relay/RelayIconInRecents$TransferCallback;

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/dist/handoff/system/HandoffConsole;->startTransferSessionToLocal(ILcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public registerRelayIconCallback()V
    .locals 1

    .line 249
    new-instance v0, Lcom/miui/home/recents/relay/RelayIconInRecents$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/relay/RelayIconInRecents$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/recents/relay/RelayIconInRecents;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setupVisible()V
    .locals 2

    .line 284
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowModeCompatAndroidT()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->isPredictHalfSplitMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mIsShowRelayIcon:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mCurrentRelayPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    .line 286
    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz v0, :cond_2

    .line 288
    sget-object p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mCurrentRelayPackage:Ljava/lang/String;

    sget v0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mCurrentRelayDeviceType:I

    invoke-static {p0, v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackExposeRelay(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public unRegisterRelayIconCallback()V
    .locals 1

    .line 266
    new-instance v0, Lcom/miui/home/recents/relay/RelayIconInRecents$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/relay/RelayIconInRecents$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/recents/relay/RelayIconInRecents;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method
