.class public Lcom/miui/home/settings/preference/DisableTipsDelegate;
.super Ljava/lang/Object;
.source "DisableTipsDelegate.java"

# interfaces
.implements Lcom/miui/home/settings/preference/DisableTips;


# instance fields
.field private mToastTips:Lcom/miui/home/settings/preference/ToastDisableTips;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showDisableTips()V
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/miui/home/settings/preference/DisableTipsDelegate;->mToastTips:Lcom/miui/home/settings/preference/ToastDisableTips;

    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/miui/home/settings/preference/ToastDisableTips;->showDisableTips()V

    :cond_0
    return-void
.end method
