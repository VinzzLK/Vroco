.class Lcom/miui/home/launcher/RecentsWindowFrameLayout$2;
.super Ljava/lang/Object;
.source "RecentsWindowFrameLayout.java"

# interfaces
.implements Lcom/miui/home/launcher/RecentsWindowFrameLayout$ExitRecentAnimatingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/RecentsWindowFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/RecentsWindowFrameLayout;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/RecentsWindowFrameLayout;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/miui/home/launcher/RecentsWindowFrameLayout$2;->this$0:Lcom/miui/home/launcher/RecentsWindowFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExitRecentAnimatingChanged(Z)V
    .locals 3

    .line 161
    invoke-static {}, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExitRecentAnimatingChanged, animating="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/miui/home/launcher/RecentsWindowFrameLayout$2;->this$0:Lcom/miui/home/launcher/RecentsWindowFrameLayout;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->access$202(Lcom/miui/home/launcher/RecentsWindowFrameLayout;Z)Z

    .line 163
    iget-object p0, p0, Lcom/miui/home/launcher/RecentsWindowFrameLayout$2;->this$0:Lcom/miui/home/launcher/RecentsWindowFrameLayout;

    invoke-static {p0}, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->access$300(Lcom/miui/home/launcher/RecentsWindowFrameLayout;)V

    return-void
.end method
