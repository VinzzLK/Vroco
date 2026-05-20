.class public final synthetic Lcom/miui/home/launcher/widget/WidgetHostViewLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/launcher/widget/WidgetHostViewLoader$$ExternalSyntheticLambda0;->f$0:F

    iput p2, p0, Lcom/miui/home/launcher/widget/WidgetHostViewLoader$$ExternalSyntheticLambda0;->f$1:F

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/widget/WidgetHostViewLoader$$ExternalSyntheticLambda0;->f$0:F

    iget p0, p0, Lcom/miui/home/launcher/widget/WidgetHostViewLoader$$ExternalSyntheticLambda0;->f$1:F

    check-cast p1, Landroid/util/SizeF;

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/widget/WidgetHostViewLoader;->$r8$lambda$sxhHRT_nf-Vstb5cU4TUXj62Oqc(FFLandroid/util/SizeF;)Landroid/util/SizeF;

    move-result-object p0

    return-object p0
.end method
