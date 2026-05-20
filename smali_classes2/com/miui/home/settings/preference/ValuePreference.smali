.class public Lcom/miui/home/settings/preference/ValuePreference;
.super Lmiuix/preference/TextPreference;
.source "ValuePreference.java"

# interfaces
.implements Lcom/miui/home/settings/preference/DisableTips;


# instance fields
.field private mToastTips:Lcom/miui/home/settings/preference/ToastDisableTips;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 1

    .line 47
    invoke-super {p0}, Landroidx/preference/Preference;->onClick()V

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDisableTips(I)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/miui/home/settings/preference/ValuePreference;->mToastTips:Lcom/miui/home/settings/preference/ToastDisableTips;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/miui/home/settings/preference/ToastDisableTips;

    invoke-direct {v0}, Lcom/miui/home/settings/preference/ToastDisableTips;-><init>()V

    iput-object v0, p0, Lcom/miui/home/settings/preference/ValuePreference;->mToastTips:Lcom/miui/home/settings/preference/ToastDisableTips;

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/miui/home/settings/preference/ValuePreference;->mToastTips:Lcom/miui/home/settings/preference/ToastDisableTips;

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/preference/ToastDisableTips;->setDisableTips(I)V

    return-void
.end method

.method public setValue(I)V
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lmiuix/preference/TextPreference;->setText(I)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public showDisableTips()V
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/miui/home/settings/preference/ValuePreference;->mToastTips:Lcom/miui/home/settings/preference/ToastDisableTips;

    if-eqz p0, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/miui/home/settings/preference/ToastDisableTips;->showDisableTips()V

    :cond_0
    return-void
.end method
