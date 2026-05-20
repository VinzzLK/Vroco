.class public final synthetic Lcom/miui/home/launcher/maml/MaMlHostView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/maml/MaMlHostView;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/maml/MaMlHostView;Ljava/lang/String;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/maml/MaMlHostView$$ExternalSyntheticLambda3;->f$0:Lcom/miui/home/launcher/maml/MaMlHostView;

    iput-object p2, p0, Lcom/miui/home/launcher/maml/MaMlHostView$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/miui/home/launcher/maml/MaMlHostView$$ExternalSyntheticLambda3;->f$2:F

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView$$ExternalSyntheticLambda3;->f$0:Lcom/miui/home/launcher/maml/MaMlHostView;

    iget-object v1, p0, Lcom/miui/home/launcher/maml/MaMlHostView$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget p0, p0, Lcom/miui/home/launcher/maml/MaMlHostView$$ExternalSyntheticLambda3;->f$2:F

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->$r8$lambda$foaP-HmIShavmaspfQx5EchAoDQ(Lcom/miui/home/launcher/maml/MaMlHostView;Ljava/lang/String;F)Lcom/miui/maml/ScreenElementRoot;

    move-result-object p0

    return-object p0
.end method
