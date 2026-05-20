.class public final Lcom/miui/home/safemode/AppVersionUpdateListener;
.super Ljava/lang/Object;
.source "AppVersionUpdateListener.kt"

# interfaces
.implements Lcom/xiaomi/market/sdk/XiaomiUpdateListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppVersionUpdateListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppVersionUpdateListener.kt\ncom/miui/home/safemode/AppVersionUpdateListener\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,67:1\n1#2:68\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/home/safemode/AppVersionUpdateListener;

.field private static callbackRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaomi/market/sdk/XiaomiUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private static triggerByUser:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/safemode/AppVersionUpdateListener;

    invoke-direct {v0}, Lcom/miui/home/safemode/AppVersionUpdateListener;-><init>()V

    sput-object v0, Lcom/miui/home/safemode/AppVersionUpdateListener;->INSTANCE:Lcom/miui/home/safemode/AppVersionUpdateListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateReturned(ILcom/xiaomi/market/sdk/UpdateResponse;)V
    .locals 2

    .line 47
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onUpdateReturned: updateStatus: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " updateInfo: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 48
    iget-object v1, p2, Lcom/xiaomi/market/sdk/UpdateResponse;->updateLog:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 47
    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .line 48
    iget v0, p2, Lcom/xiaomi/market/sdk/UpdateResponse;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 47
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "  triggerByUser "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    sget-boolean v0, Lcom/miui/home/safemode/AppVersionUpdateListener;->triggerByUser:Z

    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UpdateListener"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget-boolean p0, Lcom/miui/home/safemode/AppVersionUpdateListener;->triggerByUser:Z

    if-nez p0, :cond_2

    .line 52
    sget-object p0, Lcom/miui/home/safemode/AppVersionUpdateListener;->callbackRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/market/sdk/XiaomiUpdateListener;

    if-eqz p0, :cond_4

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/market/sdk/XiaomiUpdateListener;->onUpdateReturned(ILcom/xiaomi/market/sdk/UpdateResponse;)V

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    .line 55
    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->arrange()V

    goto :goto_1

    .line 57
    :cond_3
    sget-object p0, Lcom/miui/home/safemode/SafeModeManager;->INSTANCE:Lcom/miui/home/safemode/SafeModeManager;

    invoke-virtual {p0}, Lcom/miui/home/safemode/SafeModeManager;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 60
    sget p1, Lcom/miui/home/safemode/R$string;->safe_launcher_launcher_no_check_update_prompt:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 58
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 62
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_1
    return-void
.end method

.method public final setCallbackRef(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaomi/market/sdk/XiaomiUpdateListener;",
            ">;)V"
        }
    .end annotation

    .line 44
    sput-object p1, Lcom/miui/home/safemode/AppVersionUpdateListener;->callbackRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final setTriggerByUser(Z)V
    .locals 0

    .line 42
    sput-boolean p1, Lcom/miui/home/safemode/AppVersionUpdateListener;->triggerByUser:Z

    return-void
.end method
