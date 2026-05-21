.class Lcom/miui/home/launcher/KeyguardOccludedChangedListener$2;
.super Landroid/app/IOccludedChangedListener$Stub;
.source "KeyguardOccludedChangedListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/KeyguardOccludedChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/KeyguardOccludedChangedListener;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/KeyguardOccludedChangedListener;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/miui/home/launcher/KeyguardOccludedChangedListener$2;->this$0:Lcom/miui/home/launcher/KeyguardOccludedChangedListener;

    invoke-direct {p0}, Landroid/app/IOccludedChangedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onOccludedChangedCallback(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    iget-object p0, p0, Lcom/miui/home/launcher/KeyguardOccludedChangedListener$2;->this$0:Lcom/miui/home/launcher/KeyguardOccludedChangedListener;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/KeyguardOccludedChangedListener;->access$202(Lcom/miui/home/launcher/KeyguardOccludedChangedListener;Z)Z

    .line 44
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onOccludedChangedCallback isOccluded="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardOccludedChangedListener"

    invoke-static {p1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
