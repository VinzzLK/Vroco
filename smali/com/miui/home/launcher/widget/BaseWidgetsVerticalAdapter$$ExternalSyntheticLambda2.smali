.class public final synthetic Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;

.field public final synthetic f$1:Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/miui/home/launcher/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;ILcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;

    iput-object p2, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$$ExternalSyntheticLambda2;->f$1:Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;

    iput p3, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$$ExternalSyntheticLambda2;->f$2:I

    iput-object p4, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$$ExternalSyntheticLambda2;->f$3:Lcom/miui/home/launcher/ItemInfo;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$$ExternalSyntheticLambda2;->f$1:Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;

    iget v2, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$$ExternalSyntheticLambda2;->f$2:I

    iget-object p0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$$ExternalSyntheticLambda2;->f$3:Lcom/miui/home/launcher/ItemInfo;

    invoke-static {v0, v1, v2, p0}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->$r8$lambda$JQDQPsc03V91M28WZOkXCbpQv6c(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;ILcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;

    move-result-object p0

    return-object p0
.end method
