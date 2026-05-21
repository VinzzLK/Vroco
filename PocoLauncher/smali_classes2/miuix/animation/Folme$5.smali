.class Lmiuix/animation/Folme$5;
.super Landroid/os/Handler;
.source "Folme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/animation/Folme;->createUiHandler(Landroid/os/Looper;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 626
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 629
    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return-void

    .line 635
    :cond_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lmiuix/animation/Folme;->access$600(Ljava/util/List;)V

    return-void

    .line 631
    :cond_1
    invoke-static {}, Lmiuix/animation/Folme;->access$500()V

    .line 632
    invoke-static {v0}, Lmiuix/animation/Folme;->access$000(Z)V

    return-void
.end method
