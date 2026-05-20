.class public final Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver;
.super Landroid/database/ContentObserver;
.source "AllDeleteAppActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/settings/AllDeleteAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DeleteAppContentObserver"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/miui/home/settings/AllDeleteAppActivity;


# direct methods
.method public static synthetic $r8$lambda$Z5i4Bs8Z7UdSeuk1seBnIY3O9Gc(Lcom/miui/home/settings/AllDeleteAppActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver;->onChange$lambda-0(Lcom/miui/home/settings/AllDeleteAppActivity;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/settings/AllDeleteAppActivity;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    iput-object p1, p0, Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver;->this$0:Lcom/miui/home/settings/AllDeleteAppActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver;->handler:Landroid/os/Handler;

    return-void
.end method

.method private static final onChange$lambda-0(Lcom/miui/home/settings/AllDeleteAppActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-static {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->access$updateAppStatus(Lcom/miui/home/settings/AllDeleteAppActivity;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 225
    iget-object p1, p0, Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver;->this$0:Lcom/miui/home/settings/AllDeleteAppActivity;

    new-instance v0, Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/settings/AllDeleteAppActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
