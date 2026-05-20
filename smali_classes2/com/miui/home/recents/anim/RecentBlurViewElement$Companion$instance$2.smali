.class final Lcom/miui/home/recents/anim/RecentBlurViewElement$Companion$instance$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RecentBlurViewElement.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/anim/RecentBlurViewElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/miui/home/recents/anim/RecentBlurViewElement<",
        "Lcom/miui/home/recents/anim/RecentBlurParams;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/home/recents/anim/RecentBlurViewElement$Companion$instance$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/recents/anim/RecentBlurViewElement$Companion$instance$2;

    invoke-direct {v0}, Lcom/miui/home/recents/anim/RecentBlurViewElement$Companion$instance$2;-><init>()V

    sput-object v0, Lcom/miui/home/recents/anim/RecentBlurViewElement$Companion$instance$2;->INSTANCE:Lcom/miui/home/recents/anim/RecentBlurViewElement$Companion$instance$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/miui/home/recents/anim/RecentBlurViewElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/home/recents/anim/RecentBlurViewElement<",
            "Lcom/miui/home/recents/anim/RecentBlurParams;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance p0, Lcom/miui/home/recents/anim/RecentBlurViewElement;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/home/recents/anim/RecentBlurViewElement;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 64
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/RecentBlurViewElement$Companion$instance$2;->invoke()Lcom/miui/home/recents/anim/RecentBlurViewElement;

    move-result-object p0

    return-object p0
.end method
