use utf8;

package SemanticWeb::Schema::WebApplication;

# ABSTRACT: Web applications.

use Moo;

extends qw/ SemanticWeb::Schema::SoftwareApplication /;


use MooX::JSON_LD 'WebApplication';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.3';

=encoding utf8

=head1 DESCRIPTION

Web applications.




=head1 ATTRIBUTES


=head2 C<browser_requirements>

C<browserRequirements>

Specifies browser requirements in human-readable text. For example,
'requires HTML5 support'.


A browser_requirements should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_browser_requirements>

A predicate for the L</browser_requirements> attribute.

=cut

has browser_requirements => (
    is        => 'rw',
    predicate => '_has_browser_requirements',
    json_ld   => 'browserRequirements',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::SoftwareApplication>

=cut

1;
