use utf8;

package SemanticWeb::Schema::OverviewHealthAspect;

# ABSTRACT: Overview of the content

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'OverviewHealthAspect';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Overview of the content. Contains a summarized view of the topic with the
most relevant information for an introduction.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
