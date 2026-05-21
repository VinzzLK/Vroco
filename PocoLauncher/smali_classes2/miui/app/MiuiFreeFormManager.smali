.class public Lmiui/app/MiuiFreeFormManager;
.super Ljava/lang/Object;
.source "MiuiFreeFormManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;,
        Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;
    }
.end annotation


# static fields
.field public static final ACTION_FREEFORM_END_RESIZE:I = 0x7

.field public static final ACTION_FREEFORM_PINED:I = 0x9

.field public static final ACTION_FREEFORM_PINED_TO_MINIFREEFORM_PINED:I = 0xf

.field public static final ACTION_FREEFORM_START_RESIZE:I = 0x6

.field public static final ACTION_FREEFORM_TO_FULLSCREEN:I = 0x3

.field public static final ACTION_FREEFORM_TO_MINIFREEFORM:I = 0x2

.field public static final ACTION_FREEFORM_UNPINED:I = 0xb

.field public static final ACTION_FREEFORM_UPDATE_CAPTION_VISIBILITY:I = 0x8

.field public static final ACTION_FULLSCREEN_TO_FREEFORM:I = 0x0

.field public static final ACTION_FULLSCREEN_TO_MINIFREEFORM:I = 0x1

.field public static final ACTION_MINIFREEFORM_PINED:I = 0xa

.field public static final ACTION_MINIFREEFORM_PINED_TO_FREEFORM_PINED:I = 0xe

.field public static final ACTION_MINIFREEFORM_TO_FREEFORM:I = 0x4

.field public static final ACTION_MINIFREEFORM_TO_FULLSCREEN:I = 0x5

.field public static final ACTION_MINI_FREEFORM_UNPINED:I = 0xc

.field public static final ACTION_MINI_PIN_TO_FULLSCREEN:I = 0x11

.field public static final ACTION_NORMAL_PIN_TO_FULLSCREEN:I = 0x10

.field public static final ACTION_REMOVE_FLOATING_PIN_WINDOW:I = 0xd

.field public static final BACKGROUND_PIN:I = 0x2

.field public static final CLICK_FREFORM_TIP_TYPE:I = 0x7

.field public static final DOCK_TIP_TYPE_FREEFORM:I = 0x5

.field public static final DOCK_TIP_TYPE_MULTI_TASK:I = 0x6

.field public static final DOCK_TIP_TYPE_SPLIT:I = 0x4

.field public static final FOREGROUND_PIN:I = 0x1

.field public static final FREEFORM_MODE_MINI_PIN:I = 0x3

.field public static final FREEFORM_MODE_NORMAL_PIN:I = 0x2

.field public static final FREFORM_TIP_TYPE:I = 0x0

.field public static final GESTURE_WINDOWING_MODE_FREEFORM:I = 0x0

.field public static final GESTURE_WINDOWING_MODE_SMALL_FREEFORM:I = 0x1

.field public static final GESTURE_WINDOWING_MODE_UNDEFINED:I = -0x1

.field private static final IMiuiFreeFormManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lmiui/app/IMiuiFreeFormManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_INTERNATIONAL_BUILD:Z

.field public static final NOTIFICATION_TIP_TYPE:I = 0x2

.field public static final PIN_TIP_TYPE:I = 0x3

.field public static final SIDEBAR_TIP_TYPE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MiuiFreeFormManager"

.field public static final UNPIN:I

.field private static mService:Lmiui/app/IMiuiFreeFormGuideTipServices;

.field private static serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.product.mod_device"

    const-string v1, ""

    .line 38
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_global"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lmiui/app/MiuiFreeFormManager;->IS_INTERNATIONAL_BUILD:Z

    .line 39
    new-instance v0, Lmiui/app/MiuiFreeFormManager$1;

    invoke-direct {v0}, Lmiui/app/MiuiFreeFormManager$1;-><init>()V

    sput-object v0, Lmiui/app/MiuiFreeFormManager;->IMiuiFreeFormManagerSingleton:Landroid/util/Singleton;

    .line 66
    new-instance v0, Lmiui/app/MiuiFreeFormManager$2;

    invoke-direct {v0}, Lmiui/app/MiuiFreeFormManager$2;-><init>()V

    sput-object v0, Lmiui/app/MiuiFreeFormManager;->serviceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lmiui/app/IMiuiFreeFormGuideTipServices;)Lmiui/app/IMiuiFreeFormGuideTipServices;
    .locals 0

    .line 36
    sput-object p0, Lmiui/app/MiuiFreeFormManager;->mService:Lmiui/app/IMiuiFreeFormGuideTipServices;

    return-object p0
.end method

.method public static actionToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "ACTION_MINI_PIN_TO_FULLSCREEN"

    return-object p0

    :pswitch_1
    const-string p0, "ACTION_NORMAL_PIN_TO_FULLSCREEN"

    return-object p0

    :pswitch_2
    const-string p0, "ACTION_FREEFORM_PINED_TO_MINIFREEFORM_PINED"

    return-object p0

    :pswitch_3
    const-string p0, "ACTION_MINIFREEFORM_PINED_TO_FREEFORM_PINED"

    return-object p0

    :pswitch_4
    const-string p0, "ACTION_REMOVE_FLOATING_PIN_WINDOW"

    return-object p0

    :pswitch_5
    const-string p0, "ACTION_MINI_FREEFORM_UNPINED"

    return-object p0

    :pswitch_6
    const-string p0, "ACTION_FREEFORM_UNPINED"

    return-object p0

    :pswitch_7
    const-string p0, "ACTION_MINIFREEFORM_PINED"

    return-object p0

    :pswitch_8
    const-string p0, "ACTION_FREEFORM_PINED"

    return-object p0

    :pswitch_9
    const-string p0, "ACTION_FREEFORM_UPDATE_CAPTION_VISIBILITY"

    return-object p0

    :pswitch_a
    const-string p0, "ACTION_FREEFORM_END_RESIZE"

    return-object p0

    :pswitch_b
    const-string p0, "ACTION_FREEFORM_START_RESIZE"

    return-object p0

    :pswitch_c
    const-string p0, "ACTION_MINIFREEFORM_TO_FULLSCREEN"

    return-object p0

    :pswitch_d
    const-string p0, "ACTION_MINIFREEFORM_TO_FREEFORM"

    return-object p0

    :pswitch_e
    const-string p0, "ACTION_FREEFORM_TO_FULLSCREEN"

    return-object p0

    :pswitch_f
    const-string p0, "ACTION_FREEFORM_TO_MINIFREEFORM"

    return-object p0

    :pswitch_10
    const-string p0, "ACTION_FULLSCREEN_TO_MINIFREEFORM"

    return-object p0

    :pswitch_11
    const-string p0, "ACTION_FULLSCREEN_TO_FREEFORM"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/app/ActivityOptions;
    .locals 1

    .line 701
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public static getAllFreeFormStackInfosOnDisplay(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;"
        }
    .end annotation

    .line 175
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 179
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->getAllFreeFormStackInfosOnDisplay(I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 181
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " failed getAllFreeFormStackInfosOnDisplay displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MiuiFreeFormManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 176
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAllPinedFreeFormStackInfosOnDisplay(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;"
        }
    .end annotation

    .line 640
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 644
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 646
    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->getAllPinedFreeFormStackInfosOnDisplay(I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 649
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " failed getAllFreeFormStackInfosOnDisplay displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MiuiFreeFormManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 641
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFreeFormStackInfoByActivity(Landroid/app/Activity;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    .locals 4

    .line 224
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 228
    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "getActivityToken"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 229
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    .line 231
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 233
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lmiui/app/IMiuiFreeFormManager;->getFreeFormStackInfoByActivity(Landroid/os/IBinder;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 238
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " failed getFreeFormStackInfo view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MiuiFreeFormManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 225
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFreeFormStackInfoByStackId(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    .locals 4

    .line 187
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MiuiFreeFormManager"

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const-string p0, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    .line 188
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 192
    :cond_0
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->getFreeFormStackInfoByStackId(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 194
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " failed getFreeFormStackInfoByStackId stackId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static getFreeFormStackInfoByView(Landroid/view/View;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    .locals 5

    .line 200
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    .line 204
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 206
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v2

    invoke-interface {v2, v1}, Lmiui/app/IMiuiFreeFormManager;->getFreeFormStackInfoByWindow(Landroid/os/IBinder;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object p0

    return-object p0

    .line 208
    :cond_0
    const-class v1, Landroid/view/View;

    const-string v2, "getAttachedActivity"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 209
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 210
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    .line 211
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 213
    invoke-static {v1}, Lmiui/app/MiuiFreeFormManager;->getFreeFormStackInfoByActivity(Landroid/app/Activity;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    return-object v0

    .line 219
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " failed getFreeFormStackInfo view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MiuiFreeFormManager"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 201
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFreeFormStackToAvoid(ILjava/lang/String;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    .locals 2

    .line 147
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 151
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lmiui/app/IMiuiFreeFormManager;->getFreeFormStackToAvoid(ILjava/lang/String;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 153
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " failed getAllFreeFormStackInfosOnDisplay displayId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiFreeFormManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 148
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getMaxMiuiFreeFormStackCountForFlashBack(Ljava/lang/String;Z)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static getMiuiFreeformStackPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 683
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 686
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "freeform_package_name"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 684
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "\u975eMIUI12\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI13\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getMiuiFreeformStackShowState(Landroid/content/Context;)I
    .locals 2

    .line 672
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 675
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x1

    const-string v1, "freeform_window_state"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 673
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "\u975eMIUI12\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI13\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getMiuiFreeformVersion()I
    .locals 1

    .line 659
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method private static getService()Lmiui/app/IMiuiFreeFormManager;
    .locals 1

    .line 59
    :try_start_0
    sget-object v0, Lmiui/app/MiuiFreeFormManager;->IMiuiFreeFormManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/IMiuiFreeFormManager;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getShowGuideClick()I
    .locals 2

    .line 553
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 557
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->initFreeformGuideTipBinder()V

    .line 558
    sget-object v0, Lmiui/app/MiuiFreeFormManager;->mService:Lmiui/app/IMiuiFreeFormGuideTipServices;

    if-eqz v0, :cond_0

    .line 559
    invoke-interface {v0}, Lmiui/app/IMiuiFreeFormGuideTipServices;->getShowGuideClick()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string v0, "MiuiFreeFormManager"

    const-string v1, " failed getShowGuideClick "

    .line 562
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 554
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getShowGuideController()I
    .locals 2

    .line 589
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 593
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->initFreeformGuideTipBinder()V

    .line 594
    sget-object v0, Lmiui/app/MiuiFreeFormManager;->mService:Lmiui/app/IMiuiFreeFormGuideTipServices;

    if-eqz v0, :cond_0

    .line 595
    invoke-interface {v0}, Lmiui/app/IMiuiFreeFormGuideTipServices;->getShowGuideController()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string v0, "MiuiFreeFormManager"

    const-string v1, " failed getShowGuideController "

    .line 598
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 590
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getShowGuideDock()I
    .locals 2

    .line 485
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 489
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->initFreeformGuideTipBinder()V

    .line 490
    sget-object v0, Lmiui/app/MiuiFreeFormManager;->mService:Lmiui/app/IMiuiFreeFormGuideTipServices;

    if-eqz v0, :cond_0

    .line 491
    invoke-interface {v0}, Lmiui/app/IMiuiFreeFormGuideTipServices;->getShowGuideDock()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string v0, "MiuiFreeFormManager"

    const-string v1, " failed getShowGuideDock "

    .line 494
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 486
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getShowGuideFreeform()I
    .locals 2

    .line 454
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 458
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->initFreeformGuideTipBinder()V

    .line 459
    sget-object v0, Lmiui/app/MiuiFreeFormManager;->mService:Lmiui/app/IMiuiFreeFormGuideTipServices;

    if-eqz v0, :cond_0

    .line 460
    invoke-interface {v0}, Lmiui/app/IMiuiFreeFormGuideTipServices;->getShowGuideFreeform()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string v0, "MiuiFreeFormManager"

    const-string v1, " failed getFirstUseMiuiFreeForm "

    .line 463
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 455
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getShowGuideNotification()I
    .locals 2

    .line 500
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 504
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->initFreeformGuideTipBinder()V

    .line 505
    sget-object v0, Lmiui/app/MiuiFreeFormManager;->mService:Lmiui/app/IMiuiFreeFormGuideTipServices;

    if-eqz v0, :cond_0

    .line 506
    invoke-interface {v0}, Lmiui/app/IMiuiFreeFormGuideTipServices;->getShowGuideNotification()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string v0, "MiuiFreeFormManager"

    const-string v1, " failed getShowGuideNotification "

    .line 509
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 501
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getShowGuidePin()I
    .locals 2

    .line 469
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 473
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->initFreeformGuideTipBinder()V

    .line 474
    sget-object v0, Lmiui/app/MiuiFreeFormManager;->mService:Lmiui/app/IMiuiFreeFormGuideTipServices;

    if-eqz v0, :cond_0

    .line 475
    invoke-interface {v0}, Lmiui/app/IMiuiFreeFormGuideTipServices;->getShowGuidePin()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string v0, "MiuiFreeFormManager"

    const-string v1, " failed getShowGuidePin "

    .line 479
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 470
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getShowGuideSideBar()I
    .locals 2

    .line 535
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 539
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->initFreeformGuideTipBinder()V

    .line 540
    sget-object v0, Lmiui/app/MiuiFreeFormManager;->mService:Lmiui/app/IMiuiFreeFormGuideTipServices;

    if-eqz v0, :cond_0

    .line 541
    invoke-interface {v0}, Lmiui/app/IMiuiFreeFormGuideTipServices;->getShowGuideSideBar()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string v0, "MiuiFreeFormManager"

    const-string v1, " failed getShowGuideNotification "

    .line 544
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 536
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getShowGuideSplit()I
    .locals 2

    .line 571
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 575
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->initFreeformGuideTipBinder()V

    .line 576
    sget-object v0, Lmiui/app/MiuiFreeFormManager;->mService:Lmiui/app/IMiuiFreeFormGuideTipServices;

    if-eqz v0, :cond_0

    .line 577
    invoke-interface {v0}, Lmiui/app/IMiuiFreeFormGuideTipServices;->getShowGuideSplit()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string v0, "MiuiFreeFormManager"

    const-string v1, " failed getShowGuideSplit "

    .line 580
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 572
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hasMiuiFreeformOnShellFeature()Z
    .locals 2

    .line 124
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0}, Lmiui/app/IMiuiFreeFormManager;->hasMiuiFreeformOnShellFeature()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string v0, "MiuiFreeFormManager"

    const-string v1, " failed hasMiuiFreeformOnShellFeature"

    .line 126
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static hasTipView()Z
    .locals 2

    .line 625
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 629
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->initFreeformGuideTipBinder()V

    .line 630
    sget-object v0, Lmiui/app/MiuiFreeFormManager;->mService:Lmiui/app/IMiuiFreeFormGuideTipServices;

    if-eqz v0, :cond_0

    .line 631
    invoke-interface {v0}, Lmiui/app/IMiuiFreeFormGuideTipServices;->hasTipView()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "MiuiFreeFormManager"

    const-string v1, " failed hasTipView "

    .line 634
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 626
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hasTipViewType(I)Z
    .locals 2

    .line 607
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 611
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->initFreeformGuideTipBinder()V

    .line 612
    sget-object v0, Lmiui/app/MiuiFreeFormManager;->mService:Lmiui/app/IMiuiFreeFormGuideTipServices;

    if-eqz v0, :cond_0

    .line 613
    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormGuideTipServices;->hasTipViewType(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "MiuiFreeFormManager"

    const-string v0, " failed hasTipViewType "

    .line 616
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return p0

    .line 608
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static initFreeformGuideTipBinder()V
    .locals 5

    .line 82
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const-string v1, "MiuiFreeFormManager"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const-string v0, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    .line 83
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.miui.freeform.MiuiFreeFormGuideTipService"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.miui.freeform"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 87
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lmiui/app/MiuiFreeFormManager;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, " failed to init Freeform Guide Tip Binder"

    .line 89
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static isSupportBubbleNotification()Z
    .locals 1

    .line 302
    sget-boolean v0, Lmiui/app/MiuiFreeFormManager;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->isSupportPin()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupportPin()Z
    .locals 2

    .line 269
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 273
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    invoke-interface {v0}, Lmiui/app/IMiuiFreeFormManager;->isSupportPin()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string v0, "MiuiFreeFormManager"

    const-string v1, " failed isSuppoertPin"

    .line 278
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 270
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static notifyCameraStateChanged(Ljava/lang/String;I)V
    .locals 1

    .line 116
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lmiui/app/IMiuiFreeFormManager;->notifyCameraStateChanged(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " failed notifyCameraStateChanged packageName="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiFreeFormManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static openCameraInFreeForm(Ljava/lang/String;)Z
    .locals 2

    .line 136
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->openCameraInFreeForm(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 138
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " failed cameraOpenedInFreeForm packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "MiuiFreeFormManager"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static registerFreeformCallback(Lmiui/app/IFreeformCallback;)V
    .locals 2

    .line 243
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    if-eqz p0, :cond_0

    .line 248
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->registerFreeformCallback(Lmiui/app/IFreeformCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 250
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static removeFreeFormTipView(I)V
    .locals 2

    .line 518
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 522
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->initFreeformGuideTipBinder()V

    .line 523
    sget-object v0, Lmiui/app/MiuiFreeFormManager;->mService:Lmiui/app/IMiuiFreeFormGuideTipServices;

    if-eqz v0, :cond_0

    .line 524
    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormGuideTipServices;->removeFreeFormTipView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "MiuiFreeFormManager"

    const-string v0, " failed removeFreeFormTipView"

    .line 527
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setShowGuideClick(I)V
    .locals 2

    .line 406
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 410
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->initFreeformGuideTipBinder()V

    .line 411
    sget-object v0, Lmiui/app/MiuiFreeFormManager;->mService:Lmiui/app/IMiuiFreeFormGuideTipServices;

    if-eqz v0, :cond_0

    .line 412
    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormGuideTipServices;->setShowGuideClick(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "MiuiFreeFormManager"

    const-string v0, " failed setShowGuideClick "

    .line 415
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setShowGuideController(I)V
    .locals 2

    .line 440
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 444
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->initFreeformGuideTipBinder()V

    .line 445
    sget-object v0, Lmiui/app/MiuiFreeFormManager;->mService:Lmiui/app/IMiuiFreeFormGuideTipServices;

    if-eqz v0, :cond_0

    .line 446
    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormGuideTipServices;->setShowGuideController(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "MiuiFreeFormManager"

    const-string v0, " failed setShowGuideController "

    .line 449
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setShowGuideFreeform(I)V
    .locals 2

    .line 337
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 341
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->initFreeformGuideTipBinder()V

    .line 342
    sget-object v0, Lmiui/app/MiuiFreeFormManager;->mService:Lmiui/app/IMiuiFreeFormGuideTipServices;

    if-eqz v0, :cond_0

    .line 343
    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormGuideTipServices;->setShowGuideFreeform(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "MiuiFreeFormManager"

    const-string v0, " failed setShowGuideFreeform "

    .line 346
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setShowGuideNotification(I)V
    .locals 2

    .line 388
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 392
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->initFreeformGuideTipBinder()V

    .line 393
    sget-object v0, Lmiui/app/MiuiFreeFormManager;->mService:Lmiui/app/IMiuiFreeFormGuideTipServices;

    if-eqz v0, :cond_0

    .line 394
    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormGuideTipServices;->setShowGuideNotification(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "MiuiFreeFormManager"

    const-string v0, " failed setShowGuideNotification "

    .line 398
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setShowGuidePin(I)V
    .locals 2

    .line 354
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 358
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->initFreeformGuideTipBinder()V

    .line 359
    sget-object v0, Lmiui/app/MiuiFreeFormManager;->mService:Lmiui/app/IMiuiFreeFormGuideTipServices;

    if-eqz v0, :cond_0

    .line 360
    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormGuideTipServices;->setShowGuidePin(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "MiuiFreeFormManager"

    const-string v0, " failed setShowGuideFreeform "

    .line 363
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setShowGuideSideBar(I)V
    .locals 2

    .line 371
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 375
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->initFreeformGuideTipBinder()V

    .line 376
    sget-object v0, Lmiui/app/MiuiFreeFormManager;->mService:Lmiui/app/IMiuiFreeFormGuideTipServices;

    if-eqz v0, :cond_0

    .line 377
    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormGuideTipServices;->setShowGuideSideBar(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "MiuiFreeFormManager"

    const-string v0, " failed setShowGuideNotification "

    .line 380
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setShowGuideSplit(I)V
    .locals 2

    .line 423
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 427
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->initFreeformGuideTipBinder()V

    .line 428
    sget-object v0, Lmiui/app/MiuiFreeFormManager;->mService:Lmiui/app/IMiuiFreeFormGuideTipServices;

    if-eqz v0, :cond_0

    .line 429
    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormGuideTipServices;->setShowGuideSplit(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "MiuiFreeFormManager"

    const-string v0, " failed setShowGuideSplit "

    .line 432
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static showFreeFormGuideDialog(I)V
    .locals 3

    .line 97
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const-string v1, "MiuiFreeFormManager"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const-string v0, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    .line 98
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->initFreeformGuideTipBinder()V

    .line 102
    sget-object v0, Lmiui/app/MiuiFreeFormManager;->mService:Lmiui/app/IMiuiFreeFormGuideTipServices;

    if-eqz v0, :cond_1

    .line 103
    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormGuideTipServices;->showFreeFormGuideDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, " failed to show dialog"

    .line 106
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static showFreeFormTipView(IIII)V
    .locals 2

    .line 306
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 310
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->initFreeformGuideTipBinder()V

    .line 311
    sget-object v0, Lmiui/app/MiuiFreeFormManager;->mService:Lmiui/app/IMiuiFreeFormGuideTipServices;

    if-eqz v0, :cond_0

    .line 312
    invoke-interface {v0, p0, p1, p2, p3}, Lmiui/app/IMiuiFreeFormGuideTipServices;->showFreeFormTipView(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "MiuiFreeFormManager"

    const-string p1, " failed showFreeFormTipView"

    .line 315
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static showFreeFormTipViewByClassName(IIIILjava/lang/String;)V
    .locals 8

    .line 320
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 324
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->initFreeformGuideTipBinder()V

    .line 325
    sget-object v2, Lmiui/app/MiuiFreeFormManager;->mService:Lmiui/app/IMiuiFreeFormGuideTipServices;

    if-eqz v2, :cond_0

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    .line 326
    invoke-interface/range {v2 .. v7}, Lmiui/app/IMiuiFreeFormGuideTipServices;->showFreeFormTipViewByClassName(IIIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "MiuiFreeFormManager"

    const-string p1, " failed showFreeFormTipViewByClassName"

    .line 329
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static startSmallFreeformFromNotification(Landroid/content/Context;)I
    .locals 1

    .line 284
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    .line 288
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 290
    invoke-interface {p0}, Lmiui/app/IMiuiFreeFormManager;->startSmallFreeformFromNotification()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "MiuiFreeFormManager"

    const-string v0, " failed startSmallFreeformFromNotification "

    .line 293
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 285
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static supportFreeform()Z
    .locals 1

    .line 693
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/freeform/MiuiFreeformStub;->supportFreeform()Z

    move-result v0

    return v0
.end method

.method public static unregisterFreeformCallback(Lmiui/app/IFreeformCallback;)V
    .locals 2

    .line 256
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    if-eqz p0, :cond_0

    .line 261
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->unregisterFreeformCallback(Lmiui/app/IFreeformCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 263
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
