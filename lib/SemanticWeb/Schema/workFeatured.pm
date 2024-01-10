use utf8;

package SemanticWeb::Schema::workFeatured;

# ABSTRACT: A work featured in some event, e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'workFeatured';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A work featured in some event, e.g. exhibited in an ExhibitionEvent.
Specific subproperties are available for workPerformed (e.g. a play), or a
workPresented (a Movie at a ScreeningEvent).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
