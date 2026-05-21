.class Lcom/miui/home/launcher/hotseats/HotSeatsList$1;
.super Ljava/lang/Object;
.source "HotSeatsList.java"

# interfaces
.implements Landroidx/recyclerview/widget/ListUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/hotseats/HotSeatsList;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Ljava/util/function/BooleanSupplier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/hotseats/HotSeatsList;


# direct methods
.method public static synthetic $r8$lambda$QrBZOXiD6hPH9YuOXkZRd1HxB5U(Lcom/miui/home/launcher/hotseats/HotSeatsList$1;IILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/hotseats/HotSeatsList$1;->lambda$onRemoved$1(IILjava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dbLRUNXsSUabgncsO0xwm_2h8Eg(Lcom/miui/home/launcher/hotseats/HotSeatsList$1;IILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/hotseats/HotSeatsList$1;->lambda$onInserted$0(IILjava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yezmf5-vRGKBY-7THx6g9wtBNW8(Lcom/miui/home/launcher/hotseats/HotSeatsList$1;IILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/hotseats/HotSeatsList$1;->lambda$onMoved$2(IILjava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ypDwr32yz-S3B8N37XBp8Zi53-I(Lcom/miui/home/launcher/hotseats/HotSeatsList$1;IILjava/lang/Object;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/home/launcher/hotseats/HotSeatsList$1;->lambda$onChanged$3(IILjava/lang/Object;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method constructor <init>(Lcom/miui/home/launcher/hotseats/HotSeatsList;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList$1;->this$0:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onChanged$3(IILjava/lang/Object;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList$1;->this$0:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-static {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->access$000(Lcom/miui/home/launcher/hotseats/HotSeatsList;)Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onInserted$0(IILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList$1;->this$0:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-static {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->access$000(Lcom/miui/home/launcher/hotseats/HotSeatsList;)Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method private synthetic lambda$onMoved$2(IILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList$1;->this$0:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-static {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->access$000(Lcom/miui/home/launcher/hotseats/HotSeatsList;)Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method private synthetic lambda$onRemoved$1(IILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList$1;->this$0:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-static {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->access$000(Lcom/miui/home/launcher/hotseats/HotSeatsList;)Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method


# virtual methods
.method public onChanged(IILjava/lang/Object;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList$1;->this$0:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    new-instance v1, Lcom/miui/home/launcher/hotseats/HotSeatsList$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miui/home/launcher/hotseats/HotSeatsList$1$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsList$1;IILjava/lang/Object;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->handleDataChange(IILjava/util/function/BiConsumer;)V

    return-void
.end method

.method public onInserted(II)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList$1;->this$0:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    new-instance v1, Lcom/miui/home/launcher/hotseats/HotSeatsList$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsList$1$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsList$1;II)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->handleDataChange(IILjava/util/function/BiConsumer;)V

    return-void
.end method

.method public onMoved(II)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList$1;->this$0:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    new-instance v1, Lcom/miui/home/launcher/hotseats/HotSeatsList$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsList$1$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsList$1;II)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->handleDataChange(IILjava/util/function/BiConsumer;)V

    return-void
.end method

.method public onRemoved(II)V
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDifferList position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.HotSeatsList"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList$1;->this$0:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    new-instance v1, Lcom/miui/home/launcher/hotseats/HotSeatsList$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsList$1$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsList$1;II)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->handleDataChange(IILjava/util/function/BiConsumer;)V

    return-void
.end method
