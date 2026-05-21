.class public final synthetic Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController$$ExternalSyntheticLambda0;->f$1:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget p0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController$$ExternalSyntheticLambda0;->f$1:F

    check-cast p1, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;->$r8$lambda$YqiNPw99Tlldlze4g4z7-3g2Xm0(Ljava/lang/String;FLcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;)V

    return-void
.end method
