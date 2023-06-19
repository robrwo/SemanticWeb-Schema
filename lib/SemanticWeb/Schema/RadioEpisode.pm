use utf8;

package SemanticWeb::Schema::RadioEpisode;

# ABSTRACT: A radio episode which can be part of a series or season.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Episode /;


use MooX::JSON_LD 'RadioEpisode';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

A radio episode which can be part of a series or season.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Episode>

=cut

1;
