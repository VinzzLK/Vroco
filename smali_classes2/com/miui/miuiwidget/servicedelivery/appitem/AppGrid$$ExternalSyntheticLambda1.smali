.class public final synthetic Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/ImageView;

.field public final synthetic f$1:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda1;->f$0:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda1;->f$0:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p0}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->$r8$lambda$2ZOSbwdBlTKQQy-T-0e9UVaKKvg(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
