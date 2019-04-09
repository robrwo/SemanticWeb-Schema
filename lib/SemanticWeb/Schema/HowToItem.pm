use utf8;

package SemanticWeb::Schema::HowToItem;

# ABSTRACT: An item used as either a tool or supply when performing the instructions for how to to achieve a result.

use Moo;

extends qw/ SemanticWeb::Schema::ListItem /;


use MooX::JSON_LD 'HowToItem';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.1.0';

=encoding utf8

=head1 DESCRIPTION

An item used as either a tool or supply when performing the instructions
for how to to achieve a result.




=head1 ATTRIBUTES


=head2 C<required_quantity>

C<requiredQuantity>

The required quantity of the item(s).


A required_quantity should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=item C<Num>

=item C<Str>

=back

=cut

has required_quantity => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'requiredQuantity',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::ListItem>

=cut

1;
