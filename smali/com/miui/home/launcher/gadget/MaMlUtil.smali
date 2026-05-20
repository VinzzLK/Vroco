.class public Lcom/miui/home/launcher/gadget/MaMlUtil;
.super Ljava/lang/Object;
.source "MaMlUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;,
        Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;,
        Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;
    }
.end annotation


# static fields
.field private static final sDownloads:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sMainThreadExecutor:Lcom/miui/home/launcher/MainThreadExecutor;


# direct methods
.method public static synthetic $r8$lambda$EN0XGqrIELJvlnF5bjMwYwh-Ln0(Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/gadget/MaMlUtil;->lambda$showDownloadMaMlWarningDialog$0(Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rtv9CK3KblhTK7OZ-js59LhlQI0(Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/gadget/MaMlUtil;->lambda$showDownloadMaMlWarningDialog$1(Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 164
    new-instance v0, Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-direct {v0}, Lcom/miui/home/launcher/MainThreadExecutor;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/gadget/MaMlUtil;->sMainThreadExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

    .line 165
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/gadget/MaMlUtil;->sDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic access$200()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 49
    sget-object v0, Lcom/miui/home/launcher/gadget/MaMlUtil;->sDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$600()Lcom/miui/home/launcher/MainThreadExecutor;
    .locals 1

    .line 49
    sget-object v0, Lcom/miui/home/launcher/gadget/MaMlUtil;->sMainThreadExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

    return-object v0
.end method

.method private static synthetic lambda$showDownloadMaMlWarningDialog$0(Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 142
    check-cast p1, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 143
    invoke-static {}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->getInstance()Lcom/miui/home/launcher/widget/WidgetSettingHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->setMamlDownloadOnlyWifiWaitTime()V

    .line 145
    :cond_0
    invoke-interface {p0}, Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;->onCancel()V

    return-void
.end method

.method private static synthetic lambda$showDownloadMaMlWarningDialog$1(Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 149
    check-cast p1, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 150
    invoke-static {}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->getInstance()Lcom/miui/home/launcher/widget/WidgetSettingHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->setMamlDownloadNeverWarn()V

    .line 152
    :cond_0
    invoke-interface {p0}, Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;->onSure()V

    return-void
.end method

.method public static sendOfflineNotification(Ljava/lang/String;)V
    .locals 2

    .line 393
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.home.ACTION_OFFLINE_MAML_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "OFFLINE_MAML_BEAN_JSON_DATA"

    .line 394
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "com.miui.personalassistant"

    .line 395
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static showDownloadMaMlWarningDialog(Landroid/content/Context;JLcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;)V
    .locals 5

    long-to-float v0, p1

    const/high16 v1, 0x44800000    # 1024.0f

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_0

    const p1, 0x7f1002c5

    new-array p2, v4, [Ljava/lang/Object;

    div-float/2addr v0, v1

    .line 130
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v3

    .line 129
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const v0, 0x7f1002c4

    new-array v1, v4, [Ljava/lang/Object;

    .line 132
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 134
    :goto_0
    new-instance p2, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 135
    invoke-virtual {p2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f1002c7

    .line 136
    invoke-virtual {p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    .line 137
    invoke-virtual {p2, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f1002c1

    new-array v0, v4, [Ljava/lang/Object;

    const/16 v1, 0xa

    .line 138
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v4, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 139
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_1

    const p1, 0x7f1002bf

    goto :goto_1

    :cond_1
    const p1, 0x7f1002c0

    .line 141
    :goto_1
    new-instance p2, Lcom/miui/home/launcher/gadget/MaMlUtil$$ExternalSyntheticLambda0;

    invoke-direct {p2, p3}, Lcom/miui/home/launcher/gadget/MaMlUtil$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;)V

    .line 139
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f1002c2

    new-instance p2, Lcom/miui/home/launcher/gadget/MaMlUtil$$ExternalSyntheticLambda1;

    invoke-direct {p2, p3}, Lcom/miui/home/launcher/gadget/MaMlUtil$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;)V

    .line 148
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 155
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public static startMaMlDownload(Landroid/content/Context;Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)V
    .locals 1

    .line 65
    new-instance v0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;-><init>(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)V

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->startMaMlDownload(Landroid/content/Context;)V

    return-void
.end method
