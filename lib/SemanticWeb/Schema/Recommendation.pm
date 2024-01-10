use utf8;

package SemanticWeb::Schema::Recommendation;

# ABSTRACT: [[Recommendation]] is a type of [[Review]] that suggests or proposes something as the best option or best course of action

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Review /;


use MooX::JSON_LD 'Recommendation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

L<SemanticWeb::Schema::Recommendation> is a type of L<SemanticWeb::Schema::Review> that suggests or proposes something as the best option or best course of action. Recommendations may be for products or services, or other concrete things, as in the case of a ranked list or product guide. A L<SemanticWeb::Schema::Guide> may list multiple recommendations for different categories. For example, in a L<SemanticWeb::Schema::Guide> about which TVs to buy, the author may have several L<SemanticWeb::Schema::Recommendation>s.



=head1 ATTRIBUTES


=head2 C<category>



A category for the item. Greater signs or slashes can be used to informally
indicate a category hierarchy.


A category should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CategoryCode']>

=item C<InstanceOf['SemanticWeb::Schema::PhysicalActivityCategory']>

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=item C<Str>

=back

=head2 C<_has_category>

A predicate for the L</category> attribute.

=cut

has category => (
    is        => 'rw',
    predicate => '_has_category',
    json_ld   => 'category',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Review>

=cut

1;
