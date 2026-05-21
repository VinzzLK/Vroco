.class Lcom/miui/home/launcher/CellLayout$StayConfirm;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StayConfirm"
.end annotation


# instance fields
.field private mDragObject:Lcom/miui/home/launcher/DragObject;

.field final synthetic this$0:Lcom/miui/home/launcher/CellLayout;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/CellLayout;)V
    .locals 0

    .line 1481
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1483
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/CellLayout$1;)V
    .locals 0

    .line 1481
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout$StayConfirm;-><init>(Lcom/miui/home/launcher/CellLayout;)V

    return-void
.end method

.method static synthetic access$2102(Lcom/miui/home/launcher/CellLayout$StayConfirm;Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DragObject;
    .locals 0

    .line 1481
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1570
    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    return-void
.end method

.method public run()V
    .locals 9

    .line 1487
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v1, v0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    if-nez v1, :cond_0

    return-void

    .line 1490
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->isSpaceEnough(Lcom/miui/home/launcher/DragObject;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v0, v0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget v0, v0, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    if-eq v0, v1, :cond_1

    return-void

    .line 1493
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/CellLayout;->access$100(Lcom/miui/home/launcher/CellLayout;)[[Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v2, v2, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v2, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    aget-object v0, v0, v4

    const/4 v4, 0x1

    aget v2, v2, v4

    aget-object v0, v0, v2

    .line 1494
    instance-of v2, v0, Lcom/miui/home/launcher/DropTarget;

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Lcom/miui/home/launcher/DropTarget;

    goto :goto_0

    :cond_2
    move-object v2, v5

    :goto_0
    const-string v6, "Launcher.CellLayout"

    const-string/jumbo v7, "start push icon"

    .line 1496
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    iget-object v7, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v7, v3}, Lcom/miui/home/launcher/CellLayout;->access$202(Lcom/miui/home/launcher/CellLayout;Z)Z

    .line 1498
    iget-object v7, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v7}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v7

    iget v7, v7, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    if-ne v7, v4, :cond_e

    iget-object v7, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v7}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v7

    iget v7, v7, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-eq v7, v4, :cond_3

    goto/16 :goto_3

    .line 1507
    :cond_3
    iget-object v7, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v8, v7, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget v8, v8, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    if-eq v8, v1, :cond_b

    .line 1508
    invoke-static {v7, v0}, Lcom/miui/home/launcher/CellLayout;->access$600(Lcom/miui/home/launcher/CellLayout;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_2

    .line 1528
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v1, v0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget v1, v1, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    if-nez v1, :cond_7

    .line 1529
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragObject;->isMultiDrag()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1530
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/CellLayout;->access$1100(Lcom/miui/home/launcher/CellLayout;)V

    .line 1531
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v2, v2, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v2, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v3, v2, v3

    aget v2, v2, v4

    invoke-static {v0, v1, v3, v2, v4}, Lcom/miui/home/launcher/CellLayout;->access$1200(Lcom/miui/home/launcher/CellLayout;IIII)V

    goto/16 :goto_4

    .line 1533
    :cond_5
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/CellLayout;->access$1300(Lcom/miui/home/launcher/CellLayout;)[[Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v2, v1, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v2, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v7, v2, v3

    aget-object v0, v0, v7

    aget v2, v2, v4

    aget-object v0, v0, v2

    if-nez v0, :cond_10

    .line 1534
    invoke-static {v1}, Lcom/miui/home/launcher/CellLayout;->access$1000(Lcom/miui/home/launcher/CellLayout;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1535
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v1, v0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v1, v1, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v2, v1, v3

    aget v1, v1, v4

    invoke-static {v0, v2, v1}, Lcom/miui/home/launcher/CellLayout;->access$1400(Lcom/miui/home/launcher/CellLayout;II)I

    move-result v0

    .line 1536
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getLastOccupiedIndex()I

    move-result v1

    if-le v0, v1, :cond_10

    .line 1537
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/CellLayout;->access$1500(Lcom/miui/home/launcher/CellLayout;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1538
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/CellLayout;->alignIconsToTop(Z)Ljava/util/ArrayList;

    goto/16 :goto_4

    .line 1541
    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/CellLayout;->access$900(Lcom/miui/home/launcher/CellLayout;)V

    goto/16 :goto_4

    :cond_7
    const/16 v2, 0xa

    if-ne v1, v2, :cond_8

    .line 1545
    invoke-static {v0}, Lcom/miui/home/launcher/CellLayout;->access$900(Lcom/miui/home/launcher/CellLayout;)V

    goto/16 :goto_4

    .line 1547
    :cond_8
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragObject;->isMultiDrag()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1548
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/CellLayout;->access$1100(Lcom/miui/home/launcher/CellLayout;)V

    goto :goto_1

    .line 1549
    :cond_9
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/CellLayout;->access$1000(Lcom/miui/home/launcher/CellLayout;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1550
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/CellLayout;->access$900(Lcom/miui/home/launcher/CellLayout;)V

    .line 1552
    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v2, v2, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v7, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v3, v7, v3

    aget v7, v7, v4

    iget v2, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    invoke-static {v0, v1, v3, v7, v2}, Lcom/miui/home/launcher/CellLayout;->access$1200(Lcom/miui/home/launcher/CellLayout;IIII)V

    goto/16 :goto_4

    :cond_b
    :goto_2
    if-eqz v2, :cond_d

    .line 1510
    invoke-interface {v2}, Lcom/miui/home/launcher/DropTarget;->isDropEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v2, v0}, Lcom/miui/home/launcher/DropTarget;->acceptDrop(Lcom/miui/home/launcher/DragObject;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    .line 1511
    invoke-static {v0}, Lcom/miui/home/launcher/CellLayout;->access$700(Lcom/miui/home/launcher/CellLayout;)Lcom/miui/home/launcher/DropTarget;

    move-result-object v0

    if-eq v2, v0, :cond_d

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v0, v0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget v0, v0, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    if-ne v0, v1, :cond_d

    .line 1512
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v2, v0}, Lcom/miui/home/launcher/DropTarget;->onDragEnter(Lcom/miui/home/launcher/DragObject;)V

    .line 1513
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0, v5}, Lcom/miui/home/launcher/CellLayout;->access$800(Lcom/miui/home/launcher/CellLayout;Ljava/util/HashSet;)V

    .line 1514
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0, v2}, Lcom/miui/home/launcher/CellLayout;->access$702(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/DropTarget;)Lcom/miui/home/launcher/DropTarget;

    .line 1515
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragObject;->isMultiDrag()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1516
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/CellLayout;->access$900(Lcom/miui/home/launcher/CellLayout;)V

    .line 1517
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->clearCellBackground()V

    goto/16 :goto_4

    .line 1519
    :cond_c
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/CellLayout;->access$900(Lcom/miui/home/launcher/CellLayout;)V

    goto/16 :goto_4

    .line 1522
    :cond_d
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->isSpaceEnough(Lcom/miui/home/launcher/DragObject;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/CellLayout;->access$1000(Lcom/miui/home/launcher/CellLayout;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1523
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/CellLayout;->access$900(Lcom/miui/home/launcher/CellLayout;)V

    .line 1524
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v1, v0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v1, v1, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v2, v1, v3

    aget v1, v1, v4

    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    .line 1525
    invoke-virtual {v3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    iget v3, v3, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget-object v7, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v7}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v7

    iget v7, v7, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 1524
    invoke-static {v0, v2, v1, v3, v7}, Lcom/miui/home/launcher/CellLayout;->access$500(Lcom/miui/home/launcher/CellLayout;IIII)V

    goto :goto_4

    .line 1499
    :cond_e
    :goto_3
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 1500
    iget-wide v0, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v2}, Lcom/miui/home/launcher/CellLayout;->access$300(Lcom/miui/home/launcher/CellLayout;)Lcom/miui/home/launcher/CellLayout$CellInfo;

    move-result-object v2

    iget-wide v7, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    cmp-long v0, v0, v7

    if-nez v0, :cond_f

    .line 1501
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v1, v0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v1, v1, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v2, v1, v3

    aget v1, v1, v4

    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    .line 1502
    invoke-virtual {v3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    iget v3, v3, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget-object v7, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v7}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v7

    iget v7, v7, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 1501
    invoke-static {v0, v2, v1, v3, v7}, Lcom/miui/home/launcher/CellLayout;->access$400(Lcom/miui/home/launcher/CellLayout;IIII)V

    goto :goto_4

    .line 1504
    :cond_f
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v1, v0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v1, v1, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v2, v1, v3

    aget v1, v1, v4

    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    .line 1505
    invoke-virtual {v3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    iget v3, v3, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget-object v7, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v7}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v7

    iget v7, v7, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 1504
    invoke-static {v0, v2, v1, v3, v7}, Lcom/miui/home/launcher/CellLayout;->access$500(Lcom/miui/home/launcher/CellLayout;IIII)V

    .line 1555
    :cond_10
    :goto_4
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/CellLayout;->access$700(Lcom/miui/home/launcher/CellLayout;)Lcom/miui/home/launcher/DropTarget;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1556
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/CellLayout;->access$700(Lcom/miui/home/launcher/CellLayout;)Lcom/miui/home/launcher/DropTarget;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/CellLayout;->access$1600(Lcom/miui/home/launcher/CellLayout;Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1557
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v1}, Lcom/miui/home/launcher/CellLayout;->access$700(Lcom/miui/home/launcher/CellLayout;)Lcom/miui/home/launcher/DropTarget;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/home/launcher/DropTarget;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v2}, Lcom/miui/home/launcher/CellLayout;->access$1700(Lcom/miui/home/launcher/CellLayout;)[I

    move-result-object v2

    iget v3, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    aget v2, v2, v3

    if-ne v1, v2, :cond_11

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    .line 1558
    invoke-static {v1}, Lcom/miui/home/launcher/CellLayout;->access$1800(Lcom/miui/home/launcher/CellLayout;)[I

    move-result-object v1

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    aget v0, v1, v0

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v1}, Lcom/miui/home/launcher/CellLayout;->access$700(Lcom/miui/home/launcher/CellLayout;)Lcom/miui/home/launcher/DropTarget;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/home/launcher/DropTarget;->getTop()I

    move-result v1

    if-eq v0, v1, :cond_12

    .line 1559
    :cond_11
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/CellLayout;->access$700(Lcom/miui/home/launcher/CellLayout;)Lcom/miui/home/launcher/DropTarget;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    .line 1560
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0, v5}, Lcom/miui/home/launcher/CellLayout;->access$702(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/DropTarget;)Lcom/miui/home/launcher/DropTarget;

    .line 1563
    :cond_12
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0, v4}, Lcom/miui/home/launcher/CellLayout;->access$202(Lcom/miui/home/launcher/CellLayout;Z)Z

    .line 1565
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout$StayConfirm;->clear()V

    const-string/jumbo p0, "start move pushed icons"

    .line 1566
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
