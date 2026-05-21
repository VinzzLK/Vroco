.class public final synthetic Lcom/miui/home/launcher/common/AppCategoryManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/common/AppCategoryManager;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/common/AppCategoryManager;Landroid/content/Context;Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/AppCategoryManager$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/common/AppCategoryManager;

    iput-object p2, p0, Lcom/miui/home/launcher/common/AppCategoryManager$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/home/launcher/common/AppCategoryManager$$ExternalSyntheticLambda1;->f$2:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/common/AppCategoryManager$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/common/AppCategoryManager;

    iget-object v1, p0, Lcom/miui/home/launcher/common/AppCategoryManager$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iget-object p0, p0, Lcom/miui/home/launcher/common/AppCategoryManager$$ExternalSyntheticLambda1;->f$2:Ljava/util/HashSet;

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/common/AppCategoryManager;->$r8$lambda$fzbF0ExlZuWmB1IyeEx07sMaSQc(Lcom/miui/home/launcher/common/AppCategoryManager;Landroid/content/Context;Ljava/util/HashSet;)V

    return-void
.end method
