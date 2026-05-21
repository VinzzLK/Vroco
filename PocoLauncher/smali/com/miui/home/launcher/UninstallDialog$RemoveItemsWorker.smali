.class Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;
.super Ljava/lang/Object;
.source "UninstallDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/UninstallDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveItemsWorker"
.end annotation


# instance fields
.field private mCancelUninstallShortcuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCounter:I

.field mFailedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIsWorking:Z

.field private mItems:[Landroid/view/View;

.field final synthetic this$0:Lcom/miui/home/launcher/UninstallDialog;


# direct methods
.method public static synthetic $r8$lambda$oassEjBpvIP57W-tER07CJt7Lv4(Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->lambda$run$0()V

    return-void
.end method

.method private constructor <init>(Lcom/miui/home/launcher/UninstallDialog;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mFailedList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 338
    iput-boolean p1, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mIsWorking:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/UninstallDialog;Lcom/miui/home/launcher/UninstallDialog$1;)V
    .locals 0

    .line 334
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;-><init>(Lcom/miui/home/launcher/UninstallDialog;)V

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 7

    .line 378
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mFailedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, ""

    if-nez v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mFailedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [Landroid/view/View;

    .line 380
    iget-object v5, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    iget-object v6, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mFailedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/view/View;

    invoke-static {v5, v6}, Lcom/miui/home/launcher/UninstallDialog;->access$300(Lcom/miui/home/launcher/UninstallDialog;[Landroid/view/View;)V

    if-ne v0, v2, :cond_0

    .line 382
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-static {v0}, Lcom/miui/home/launcher/UninstallDialog;->access$400(Lcom/miui/home/launcher/UninstallDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f10052b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aget-object v3, v4, v1

    .line 383
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v4, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-static {v4}, Lcom/miui/home/launcher/UninstallDialog;->access$500(Lcom/miui/home/launcher/UninstallDialog;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v1

    .line 382
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v4, 0x2

    if-lt v0, v4, :cond_3

    .line 385
    iget-object v3, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e001a

    new-array v2, v2, [Ljava/lang/Object;

    .line 387
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    .line 386
    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mItems:[Landroid/view/View;

    array-length v4, v0

    if-ne v4, v2, :cond_2

    .line 391
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-static {v0}, Lcom/miui/home/launcher/UninstallDialog;->access$600(Lcom/miui/home/launcher/UninstallDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f10052c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 392
    :cond_2
    array-length v0, v0

    if-le v0, v2, :cond_3

    .line 393
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-static {v0}, Lcom/miui/home/launcher/UninstallDialog;->access$700(Lcom/miui/home/launcher/UninstallDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0e001b

    iget-object v4, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mItems:[Landroid/view/View;

    array-length v5, v4

    new-array v2, v2, [Ljava/lang/Object;

    array-length v4, v4

    .line 395
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    .line 394
    invoke-virtual {v0, v3, v5, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 398
    :cond_3
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 399
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 401
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mFailedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 402
    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mItems:[Landroid/view/View;

    return-void
.end method


# virtual methods
.method public failedRemoveCurrent()V
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mFailedList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mItems:[Landroid/view/View;

    iget p0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mCounter:I

    aget-object p0, v1, p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public remove([Landroid/view/View;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 346
    iput v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mCounter:I

    .line 347
    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mItems:[Landroid/view/View;

    const/4 p1, 0x1

    .line 348
    iput-boolean p1, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mIsWorking:Z

    .line 349
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mFailedList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 350
    invoke-static {p0}, Lcom/miui/home/launcher/common/BackgroundThread;->postAtFrontOfQueue(Ljava/lang/Runnable;)V

    .line 351
    iput-object p2, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mCancelUninstallShortcuts:Ljava/util/List;

    return-void
.end method

.method public run()V
    .locals 5

    .line 360
    :goto_0
    iget v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mCounter:I

    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mItems:[Landroid/view/View;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 361
    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mCancelUninstallShortcuts:Ljava/util/List;

    if-eqz v2, :cond_0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mItems:[Landroid/view/View;

    iget v2, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mCounter:I

    aget-object v1, v1, v2

    .line 362
    invoke-static {v0, v1}, Lcom/miui/home/launcher/UninstallDialog;->access$100(Lcom/miui/home/launcher/UninstallDialog;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 363
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->failedRemoveCurrent()V

    .line 365
    :cond_2
    iget v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mCounter:I

    goto :goto_0

    .line 367
    :cond_3
    array-length v2, v1

    if-ne v0, v2, :cond_7

    .line 368
    array-length v0, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_5

    aget-object v3, v1, v2

    .line 369
    iget-object v4, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mFailedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 370
    iget-object v4, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-static {v4}, Lcom/miui/home/launcher/UninstallDialog;->access$200(Lcom/miui/home/launcher/UninstallDialog;)Lcom/miui/home/launcher/Launcher;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/Launcher;->fillEmpty(Lcom/miui/home/launcher/ItemInfo;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 373
    :cond_5
    :goto_2
    iget v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mCounter:I

    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mItems:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 374
    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->failedRemoveCurrent()V

    .line 373
    iget v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mCounter:I

    goto :goto_2

    .line 376
    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    new-instance v1, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method
