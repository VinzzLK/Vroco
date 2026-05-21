.class public final synthetic Lcom/miui/home/launcher/common/Utilities$BitmapUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/graphics/Bitmap;

.field public final synthetic f$4:Landroid/graphics/Bitmap$CompressFormat;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/Utilities$BitmapUtils$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/home/launcher/common/Utilities$BitmapUtils$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/home/launcher/common/Utilities$BitmapUtils$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/home/launcher/common/Utilities$BitmapUtils$$ExternalSyntheticLambda0;->f$3:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/miui/home/launcher/common/Utilities$BitmapUtils$$ExternalSyntheticLambda0;->f$4:Landroid/graphics/Bitmap$CompressFormat;

    iput p6, p0, Lcom/miui/home/launcher/common/Utilities$BitmapUtils$$ExternalSyntheticLambda0;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/miui/home/launcher/common/Utilities$BitmapUtils$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/common/Utilities$BitmapUtils$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/launcher/common/Utilities$BitmapUtils$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/home/launcher/common/Utilities$BitmapUtils$$ExternalSyntheticLambda0;->f$3:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/miui/home/launcher/common/Utilities$BitmapUtils$$ExternalSyntheticLambda0;->f$4:Landroid/graphics/Bitmap$CompressFormat;

    iget v5, p0, Lcom/miui/home/launcher/common/Utilities$BitmapUtils$$ExternalSyntheticLambda0;->f$5:I

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/common/Utilities$BitmapUtils;->$r8$lambda$IVrBL_qEJejVFozBK5-tmJscxhw(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)V

    return-void
.end method
