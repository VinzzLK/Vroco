.class Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;
.super Ljava/lang/Object;
.source "ClockGadgetDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->updateActualGadget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 243
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    iget-object v1, v0, Lcom/miui/home/launcher/gadget/ConfigableGadget;->mBackupManager:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    invoke-static {v0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$000(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->getItemId()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupPath(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v1}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$100(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "/data/system/theme/clock_2x4"

    .line 247
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateActualGadget backup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher.ClockGadgetDelegate"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->parseManifestInZip(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    const-string/jumbo v4, "type"

    .line 250
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 251
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v5, v4}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$202(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;Ljava/lang/String;)Ljava/lang/String;

    const-string v5, "flip"

    .line 252
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 253
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v4}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$300(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Landroid/view/ViewStub;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    move-object v2, v3

    goto :goto_0

    .line 255
    :cond_1
    new-instance v2, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$1;

    iget-object v4, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v4}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$000(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$1;-><init>(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;Landroid/content/Context;)V

    .line 265
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->containsConfig(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 268
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/home/launcher/gadget/AwesomeClock;->setMamlConfigPath(Ljava/lang/String;)V

    .line 269
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v4}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$600(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Lcom/miui/home/launcher/gadget/AwesomeClock;->setConfigParas(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v4}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$300(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Landroid/view/ViewStub;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 274
    instance-of v4, v2, Lcom/miui/home/launcher/gadget/Clock$ClockStyle;

    if-eqz v4, :cond_4

    .line 275
    invoke-interface {v2, v0}, Lcom/miui/home/launcher/gadget/Clock$ClockStyle;->initConfig(Ljava/lang/String;)V

    goto :goto_1

    .line 278
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$300(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v0, v2}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$700(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;Z)V

    move-object v2, v3

    .line 282
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    iget-object v4, v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    const/4 v5, 0x1

    if-eqz v4, :cond_8

    .line 285
    iget v0, v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 286
    invoke-virtual {v4}, Lcom/miui/home/launcher/gadget/Gadget;->onPause()V

    .line 288
    :cond_5
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    iget v0, v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    .line 289
    invoke-virtual {v4}, Lcom/miui/home/launcher/gadget/Gadget;->onStop()V

    .line 291
    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    iget v0, v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_7

    .line 292
    invoke-virtual {v4}, Lcom/miui/home/launcher/gadget/Gadget;->onDestroy()V

    .line 294
    :cond_7
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 297
    :cond_8
    instance-of v0, v2, Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v0, :cond_c

    .line 298
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 300
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$800(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;Lorg/w3c/dom/Element;Landroid/view/View;)V

    .line 302
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    iget v0, v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_9

    .line 303
    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/Gadget;->onCreate()V

    .line 305
    :cond_9
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    iget v0, v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    .line 306
    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/Gadget;->onStart()V

    .line 308
    :cond_a
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    iget v0, v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_b

    .line 309
    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    .line 313
    :cond_b
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    iget-object v0, v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/gadget/Clock;->setClockStyle(Lcom/miui/home/launcher/gadget/Clock$ClockStyle;)V

    .line 314
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    iput-object v2, v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    .line 315
    invoke-virtual {v2, v5}, Lcom/miui/home/launcher/gadget/Gadget;->setCanNotChangeCanvasAlpha(Z)V

    goto :goto_2

    .line 318
    :cond_c
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    iget-object v0, v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/gadget/Clock;->setClockStyle(Lcom/miui/home/launcher/gadget/Clock$ClockStyle;)V

    .line 319
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    iput-object v3, v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    .line 322
    :goto_2
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$200(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "awesome"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    instance-of v0, v2, Lcom/miui/home/launcher/gadget/AwesomeClock;

    if-eqz v0, :cond_d

    .line 323
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-virtual {v2, p0}, Lcom/miui/home/launcher/gadget/AwesomeClock;->setClockButtonListener(Lcom/miui/launcher/views/MamlButtonActionListener;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$402(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;Z)Z

    :cond_d
    return-void
.end method
