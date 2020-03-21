use utf8;

package SemanticWeb::Schema::ReplaceAction;

# ABSTRACT: The act of editing a recipient by replacing an old object with a new object.

use Moo;

extends qw/ SemanticWeb::Schema::UpdateAction /;


use MooX::JSON_LD 'ReplaceAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.1';

=encoding utf8

=head1 DESCRIPTION

The act of editing a recipient by replacing an old object with a new
object.




=head1 ATTRIBUTES


=head2 C<replacee>



A sub property of object. The object that is being replaced.


A replacee should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=head2 C<_has_replacee>

A predicate for the L</replacee> attribute.

=cut

has replacee => (
    is        => 'rw',
    predicate => '_has_replacee',
    json_ld   => 'replacee',
);


=head2 C<replacer>



A sub property of object. The object that replaces.


A replacer should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=head2 C<_has_replacer>

A predicate for the L</replacer> attribute.

=cut

has replacer => (
    is        => 'rw',
    predicate => '_has_replacer',
    json_ld   => 'replacer',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::UpdateAction>

=cut

1;
