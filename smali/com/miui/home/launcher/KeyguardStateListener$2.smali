.class Lcom/miui/home/launcher/KeyguardStateListener$2;
.super Ljava/lang/Object;
.source "KeyguardStateListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/KeyguardStateListener;->unregisterKeyguardStateListenerIfNeed(Landroid/app/KeyguardManager$KeyguardLockedStateListener;)V
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

    .line 51
    iput-object p1, p0, Lcom/miui/home/launcher/KeyguardStateListener$2;->this$0:Lcom/miui/home/launcher/KeyguardStateListener;

    iput-object p2, p0, Lcom/miui/home/launcher/KeyguardStateListener$2;->val$listener:Landroid/app/KeyguardManager$KeyguardLockedStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 54
    sget-boolean v0, Lcom/miui/home/launcher/KeyguardStateListener;->mIsUseKeyguardStateListener:Z

    if-nez v0, :cond_0

    .line 55
    invoke-static {}, Lcom/miui/home/launcher/KeyguardStateListener;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UnregisterIfNeed, unregister keyguard state listener"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/KeyguardStateListener$2;->this$0:Lcom/miui/home/launcher/KeyguardStateListener;

    invoke-static {v0}, Lcom/miui/home/launcher/KeyguardStateListener;->access$200(Lcom/miui/home/launcher/KeyguardStateListener;)Landroid/app/KeyguardManager;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/KeyguardStateListener$2;->val$listener:Landroid/app/KeyguardManager$KeyguardLockedStateListener;

    invoke-virtual {v0, p0}, Landroid/app/KeyguardManager;->removeKeyguardLockedStateListener(Landroid/app/KeyguardManager$KeyguardLockedStateListener;)V

    return-void
.end method
