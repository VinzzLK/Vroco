.class public final synthetic Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;

.field public final synthetic f$1:Lcom/miui/home/launcher/AppInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;Lcom/miui/home/launcher/AppInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder$$ExternalSyntheticLambda2;->f$0:Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder$$ExternalSyntheticLambda2;->f$1:Lcom/miui/home/launcher/AppInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder$$ExternalSyntheticLambda2;->f$0:Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder$$ExternalSyntheticLambda2;->f$1:Lcom/miui/home/launcher/AppInfo;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;->$r8$lambda$oIPQQdhuQrxQASoTtv-IPv1VXec(Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;Lcom/miui/home/launcher/AppInfo;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
