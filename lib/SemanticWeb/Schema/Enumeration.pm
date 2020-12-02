use utf8;

package SemanticWeb::Schema::Enumeration;

# ABSTRACT: Lists or enumerationsâfor example

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'Enumeration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.0.1';

=encoding utf8

=head1 DESCRIPTION

Lists or enumerationsâfor example, a list of cuisines or music genres,
etc.




=head1 ATTRIBUTES


=head2 C<superseded_by>

C<supersededBy>

Relates a term (i.e. a property, class or enumeration) to one that
supersedes it.


A superseded_by should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Class']>

=item C<InstanceOf['SemanticWeb::Schema::Enumeration']>

=item C<InstanceOf['SemanticWeb::Schema::Property']>

=back

=head2 C<_has_superseded_by>

A predicate for the L</superseded_by> attribute.

=cut

has superseded_by => (
    is        => 'rw',
    predicate => '_has_superseded_by',
    json_ld   => 'supersededBy',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
