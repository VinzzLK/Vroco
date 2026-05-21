.class public final synthetic Lcom/miui/home/launcher/CellLayout$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/CellLayout;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/CellLayout;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout$$ExternalSyntheticLambda4;->f$0:Lcom/miui/home/launcher/CellLayout;

    iput-object p2, p0, Lcom/miui/home/launcher/CellLayout$$ExternalSyntheticLambda4;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$$ExternalSyntheticLambda4;->f$0:Lcom/miui/home/launcher/CellLayout;

    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout$$ExternalSyntheticLambda4;->f$1:Ljava/util/ArrayList;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/CellLayout;->$r8$lambda$aAi0hDMDEnsM1sqR1XpKPhMs39A(Lcom/miui/home/launcher/CellLayout;Ljava/util/ArrayList;Landroid/view/View;)V

    return-void
.end method
