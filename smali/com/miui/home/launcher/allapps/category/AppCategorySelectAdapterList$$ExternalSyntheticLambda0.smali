.class public final synthetic Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/recyclerview/widget/GridLayoutManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/GridLayoutManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/GridLayoutManager;

    iput p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/GridLayoutManager;

    iget p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->$r8$lambda$Ql8LwRSoB_SYZuea21oMNhn0hks(Landroidx/recyclerview/widget/GridLayoutManager;I)V

    return-void
.end method
