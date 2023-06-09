use utf8;

package SemanticWeb::Schema::MerchantReturnPolicySeasonalOverride;

# ABSTRACT: A seasonal override of a return policy

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'MerchantReturnPolicySeasonalOverride';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.1';

=encoding utf8

=head1 DESCRIPTION

A seasonal override of a return policy, for example used for holidays.




=head1 ATTRIBUTES


=head2 C<end_date>

C<endDate>

The end date and time of the item (in [ISO 8601 date
format](http://en.wikipedia.org/wiki/ISO_8601)).


A end_date should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_end_date>

A predicate for the L</end_date> attribute.

=cut

has end_date => (
    is        => 'rw',
    predicate => '_has_end_date',
    json_ld   => 'endDate',
);


=head2 C<merchant_return_days>

C<merchantReturnDays>

Specifies either a fixed return date or the number of days (from the delivery date) that a product can be returned. Used when the [[returnPolicyCategory]] property is specified as L<SemanticWeb::Schema::MerchantReturnFiniteReturnWindow>.

A merchant_return_days should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=item C<Str>

=back

=head2 C<_has_merchant_return_days>

A predicate for the L</merchant_return_days> attribute.

=cut

has merchant_return_days => (
    is        => 'rw',
    predicate => '_has_merchant_return_days',
    json_ld   => 'merchantReturnDays',
);


=head2 C<return_policy_category>

C<returnPolicyCategory>

Specifies an applicable return policy (from an enumeration).


A return_policy_category should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MerchantReturnEnumeration']>

=back

=head2 C<_has_return_policy_category>

A predicate for the L</return_policy_category> attribute.

=cut

has return_policy_category => (
    is        => 'rw',
    predicate => '_has_return_policy_category',
    json_ld   => 'returnPolicyCategory',
);


=head2 C<start_date>

C<startDate>

The start date and time of the item (in [ISO 8601 date
format](http://en.wikipedia.org/wiki/ISO_8601)).


A start_date should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_start_date>

A predicate for the L</start_date> attribute.

=cut

has start_date => (
    is        => 'rw',
    predicate => '_has_start_date',
    json_ld   => 'startDate',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
