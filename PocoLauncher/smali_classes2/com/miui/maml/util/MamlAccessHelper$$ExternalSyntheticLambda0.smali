.class public final synthetic Lcom/miui/maml/util/MamlAccessHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/maml/util/MamlAccessHelper;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/maml/util/MamlAccessHelper;Landroid/view/View;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/util/MamlAccessHelper$$ExternalSyntheticLambda0;->f$0:Lcom/miui/maml/util/MamlAccessHelper;

    iput-object p2, p0, Lcom/miui/maml/util/MamlAccessHelper$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iput p3, p0, Lcom/miui/maml/util/MamlAccessHelper$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/miui/maml/util/MamlAccessHelper$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/maml/util/MamlAccessHelper$$ExternalSyntheticLambda0;->f$0:Lcom/miui/maml/util/MamlAccessHelper;

    iget-object v1, p0, Lcom/miui/maml/util/MamlAccessHelper$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iget v2, p0, Lcom/miui/maml/util/MamlAccessHelper$$ExternalSyntheticLambda0;->f$2:I

    iget p0, p0, Lcom/miui/maml/util/MamlAccessHelper$$ExternalSyntheticLambda0;->f$3:I

    invoke-static {v0, v1, v2, p0}, Lcom/miui/maml/util/MamlAccessHelper;->$r8$lambda$ps_X4MXlzynV31dby9QMyN1K9gw(Lcom/miui/maml/util/MamlAccessHelper;Landroid/view/View;II)V

    return-void
.end method
