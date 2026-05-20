.class Lcom/xiaomi/onetrack/api/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/api/c;

.field private b:I

.field private c:I

.field private d:J

.field private e:Z

.field private f:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/c;)V
    .locals 0

    .line 586
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/m;->a:Lcom/xiaomi/onetrack/api/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 587
    iput p1, p0, Lcom/xiaomi/onetrack/api/m;->b:I

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    .line 630
    iget v0, p0, Lcom/xiaomi/onetrack/api/m;->c:I

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 631
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/onetrack/api/m;->d:J

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 633
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 635
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/m;->a:Lcom/xiaomi/onetrack/api/c;

    invoke-static {p0, v2, v0, v1}, Lcom/xiaomi/onetrack/api/c;->a(Lcom/xiaomi/onetrack/api/c;Ljava/lang/String;J)V

    .line 637
    sget-boolean p0, Lcom/xiaomi/onetrack/util/q;->a:Z

    if-eqz p0, :cond_1

    .line 638
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityPaused:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseOneTrackImp"

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    .line 614
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/m;->a:Lcom/xiaomi/onetrack/api/c;

    iget-boolean v1, p0, Lcom/xiaomi/onetrack/api/m;->f:Z

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/api/c;->a(Lcom/xiaomi/onetrack/api/c;Z)V

    .line 615
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/onetrack/api/m;->c:I

    .line 616
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/onetrack/api/m;->d:J

    .line 617
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/m;->a:Lcom/xiaomi/onetrack/api/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaomi/onetrack/api/m;->e:Z

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/onetrack/api/c;->a(Ljava/lang/String;Z)V

    .line 619
    sget-boolean v0, Lcom/xiaomi/onetrack/util/q;->a:Z

    if-eqz v0, :cond_0

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResumed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isAppStart:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/xiaomi/onetrack/api/m;->e:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseOneTrackImp"

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 623
    iput-boolean p1, p0, Lcom/xiaomi/onetrack/api/m;->e:Z

    .line 624
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/m;->a:Lcom/xiaomi/onetrack/api/c;

    invoke-static {p0}, Lcom/xiaomi/onetrack/api/c;->c(Lcom/xiaomi/onetrack/api/c;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    .line 600
    iget v0, p0, Lcom/xiaomi/onetrack/api/m;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/m;->a:Lcom/xiaomi/onetrack/api/c;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/api/c;->j()Lcom/xiaomi/onetrack/api/ao;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/xiaomi/onetrack/api/ao;->a(I)V

    .line 602
    iput-boolean v2, p0, Lcom/xiaomi/onetrack/api/m;->e:Z

    .line 603
    iput-boolean v1, p0, Lcom/xiaomi/onetrack/api/m;->f:Z

    .line 604
    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->a()V

    goto :goto_0

    .line 606
    :cond_0
    iput-boolean v1, p0, Lcom/xiaomi/onetrack/api/m;->e:Z

    .line 608
    :goto_0
    iget v0, p0, Lcom/xiaomi/onetrack/api/m;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/xiaomi/onetrack/api/m;->b:I

    .line 609
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityStarted: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseOneTrackImp"

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4

    .line 644
    iget v0, p0, Lcom/xiaomi/onetrack/api/m;->b:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/onetrack/api/m;->b:I

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/m;->a:Lcom/xiaomi/onetrack/api/c;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/api/c;->j()Lcom/xiaomi/onetrack/api/ao;

    move-result-object v0

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Lcom/xiaomi/onetrack/api/ao;->a(I)V

    .line 647
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/m;->a:Lcom/xiaomi/onetrack/api/c;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/c;->d(Lcom/xiaomi/onetrack/api/c;)V

    .line 648
    iput-boolean v1, p0, Lcom/xiaomi/onetrack/api/m;->f:Z

    .line 649
    iput-boolean v2, p0, Lcom/xiaomi/onetrack/api/m;->e:Z

    goto :goto_0

    .line 651
    :cond_0
    iput-boolean v2, p0, Lcom/xiaomi/onetrack/api/m;->f:Z

    .line 653
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/m;->a:Lcom/xiaomi/onetrack/api/c;

    iget-boolean p0, p0, Lcom/xiaomi/onetrack/api/m;->f:Z

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/api/c;->a(Lcom/xiaomi/onetrack/api/c;Z)V

    .line 654
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityStopped: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseOneTrackImp"

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
