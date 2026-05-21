.class public final synthetic Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;

.field public final synthetic f$1:Lcom/miui/home/launcher/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;

    iput-object p2, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/launcher/ItemInfo;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;

    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/launcher/ItemInfo;

    invoke-static {v0, p0}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->$r8$lambda$18Nmd4mDFMMNvOv9RsdYlDDz-vw(Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;

    move-result-object p0

    return-object p0
.end method
