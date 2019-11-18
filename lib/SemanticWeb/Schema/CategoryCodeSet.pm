use utf8;

package SemanticWeb::Schema::CategoryCodeSet;

# ABSTRACT: A set of Category Code values.

use Moo;

extends qw/ SemanticWeb::Schema::DefinedTermSet /;


use MooX::JSON_LD 'CategoryCodeSet';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

A set of Category Code values.




=head1 ATTRIBUTES


=head2 C<has_category_code>

C<hasCategoryCode>

A Category code contained in this code set.


A has_category_code should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CategoryCode']>

=back

=head2 C<_has_has_category_code>

A predicate for the L</has_category_code> attribute.

=cut

has has_category_code => (
    is        => 'rw',
    predicate => '_has_has_category_code',
    json_ld   => 'hasCategoryCode',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::DefinedTermSet>

=cut

1;
