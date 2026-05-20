.class Lcom/miui/home/launcher/KeyguardStateListener$1;
.super Ljava/lang/Object;
.source "KeyguardStateListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/KeyguardStateListener;->registerKeyguardStateListenerIfNeed(Landroid/app/KeyguardManager$KeyguardLockedStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/KeyguardStateListener;

.field final synthetic val$listener:Landroid/app/KeyguardManager$KeyguardLockedStateListener;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/KeyguardStateListener;Landroid/app/KeyguardManager$KeyguardLockedStateListener;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/miui/home/launcher/KeyguardStateListener$1;->this$0:Lcom/miui/home/launcher/KeyguardStateListener;

    iput-object p2, p0, Lcom/miui/home/launcher/KeyguardStateListener$1;->val$listener:Landroid/app/KeyguardManager$KeyguardLockedStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 37
    sget-boolean v0, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_W:Z

    if-nez v0, :cond_0

    const-string v0, "persist.sys.keyguard_state_ready"

    const-string v1, "false"

    .line 38
    invoke-static {v0, v1}, Lcom/miui/launcher/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/KeyguardStateListener;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/miui/home/launcher/KeyguardStateListener;->mIsUseKeyguardStateListener:Z

    .line 39
    sget-boolean v0, Lcom/miui/home/launcher/KeyguardStateListener;->mIsUseKeyguardStateListener:Z

    if-nez v0, :cond_2

    .line 40
    invoke-static {}, Lcom/miui/home/launcher/KeyguardStateListener;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string v0, "initAndRegisterIfNeed, don\'t use keyguard state listener"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/KeyguardStateListener$1;->this$0:Lcom/miui/home/launcher/KeyguardStateListener;

    invoke-static {v0}, Lcom/miui/home/launcher/KeyguardStateListener;->access$200(Lcom/miui/home/launcher/KeyguardStateListener;)Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/KeyguardStateListener;->mIsKeyguardLocked:Z

    .line 44
    invoke-static {}, Lcom/miui/home/launcher/KeyguardStateListener;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initAndRegisterInBackground, isLock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/miui/home/launcher/KeyguardStateListener;->mIsKeyguardLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/KeyguardStateListener$1;->this$0:Lcom/miui/home/launcher/KeyguardStateListener;

    invoke-static {v0}, Lcom/miui/home/launcher/KeyguardStateListener;->access$200(Lcom/miui/home/launcher/KeyguardStateListener;)Landroid/app/KeyguardManager;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/util/Executors;->MAIN_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    iget-object p0, p0, Lcom/miui/home/launcher/KeyguardStateListener$1;->val$listener:Landroid/app/KeyguardManager$KeyguardLockedStateListener;

    invoke-virtual {v0, v1, p0}, Landroid/app/KeyguardManager;->addKeyguardLockedStateListener(Ljava/util/concurrent/Executor;Landroid/app/KeyguardManager$KeyguardLockedStateListener;)V

    return-void
.end method
