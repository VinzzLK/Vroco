.class final Lcom/miui/home/launcher/folder/PreviewIconClickDelegate$mOnClickListener$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PreviewIconClickDelegate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/view/View$OnClickListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;


# direct methods
.method public static synthetic $r8$lambda$T62ZT9wGJPmkgEQUee0SOXpI6Ow(Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate$mOnClickListener$2;->invoke$lambda-0(Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate$mOnClickListener$2;->this$0:Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda-0(Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;Landroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->getLi()Lcom/miui/home/launcher/folder/ListenerInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/folder/ListenerInfo;->onViewClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/View$OnClickListener;
    .locals 1

    .line 25
    iget-object p0, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate$mOnClickListener$2;->this$0:Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;

    new-instance v0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate$mOnClickListener$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate$mOnClickListener$2$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate$mOnClickListener$2;->invoke()Landroid/view/View$OnClickListener;

    move-result-object p0

    return-object p0
.end method
