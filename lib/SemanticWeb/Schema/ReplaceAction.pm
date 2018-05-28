package SemanticWeb::Schema::ReplaceAction;

# ABSTRACT: The act of editing a recipient by replacing an old object with a new object.

use Moo;

extends qw/ SemanticWeb::Schema::UpdateAction /;


use MooX::JSON_LD 'ReplaceAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

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

=cut

has replacee => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'replacee',
    json_ld_serializer => \&_serialize_replacee,
);

sub _serialize_replacee { $_[0]->_serializer('replacee') }


=head2 C<replacer>



A sub property of object. The object that replaces.


A replacer should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=cut

has replacer => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'replacer',
    json_ld_serializer => \&_serialize_replacer,
);

sub _serialize_replacer { $_[0]->_serializer('replacer') }




=head1 SEE ALSO



L<SemanticWeb::Schema::UpdateAction>

=cut

1;
