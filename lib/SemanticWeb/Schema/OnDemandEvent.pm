use utf8;

package SemanticWeb::Schema::OnDemandEvent;

# ABSTRACT: A publication event, e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::PublicationEvent /;


use MooX::JSON_LD 'OnDemandEvent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.1';

=encoding utf8

=head1 DESCRIPTION

A publication event, e.g. catch-up TV or radio podcast, during which a
program is available on-demand.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::PublicationEvent>

=cut

1;
