use utf8;

package SemanticWeb::Schema::HowToSupply;

# ABSTRACT: A supply consumed when performing the instructions for how to achieve a result.

use Moo;

extends qw/ SemanticWeb::Schema::HowToItem /;


use MooX::JSON_LD 'HowToSupply';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.5.2';

=encoding utf8

=head1 DESCRIPTION

A supply consumed when performing the instructions for how to achieve a
result.




=head1 ATTRIBUTES


=head2 C<estimated_cost>

C<estimatedCost>

The estimated cost of the supply or supplies consumed when performing
instructions.


A estimated_cost should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmount']>

=item C<Str>

=back

=cut

has estimated_cost => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'estimatedCost',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::HowToItem>

=cut

1;
